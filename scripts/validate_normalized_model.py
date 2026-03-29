#!/usr/bin/env python3

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MODEL_PATH = ROOT / "docs" / "NORMALIZED_CONTENT_MODEL.json"


def require(condition: bool, message: str, errors: list[str]) -> None:
    if not condition:
        errors.append(message)


def main() -> int:
    payload = json.loads(MODEL_PATH.read_text(encoding="utf-8"))
    errors: list[str] = []

    top_keys = {
        "meta",
        "expansions",
        "instances",
        "instanceNpcs",
        "npcs",
        "tips",
        "instanceTips",
        "instanceDetails",
    }
    require(set(payload.keys()) == top_keys, "Top-level keys do not match the normalized model contract.", errors)

    expansions = payload.get("expansions", {})
    instances = payload.get("instances", {})
    instance_npcs = payload.get("instanceNpcs", {})
    npcs = payload.get("npcs", {})
    tips = payload.get("tips", {})
    instance_tips = payload.get("instanceTips", {})
    instance_details = payload.get("instanceDetails", {})

    for instance_key, instance in instances.items():
        require("name" in instance and "enUS" in instance["name"] and "deDE" in instance["name"], f"Instance `{instance_key}` must have localized `name` fields.", errors)
        require(instance.get("expansion") in expansions, f"Instance `{instance_key}` must reference a known expansion.", errors)
        require(instance_key in instance_npcs, f"Instance `{instance_key}` is missing `instanceNpcs` relation data.", errors)
        require(instance_key in tips, f"Instance `{instance_key}` is missing `tips` container.", errors)
        require(instance_key in instance_tips, f"Instance `{instance_key}` is missing `instanceTips` container.", errors)
        require(instance_key in instance_details, f"Instance `{instance_key}` is missing `instanceDetails` container.", errors)

    for npc_id, npc in npcs.items():
        require("name" in npc and "enUS" in npc["name"] and "deDE" in npc["name"], f"NPC `{npc_id}` must have localized `name` fields.", errors)
        require(isinstance(npc.get("instances"), list), f"NPC `{npc_id}` must expose `instances` as a list.", errors)

    for instance_key, npc_map in tips.items():
        require(isinstance(npc_map, dict), f"`tips.{instance_key}` must be a dict keyed by npc id.", errors)
        for npc_id, tip_map in npc_map.items():
            require(isinstance(tip_map, dict), f"`tips.{instance_key}.{npc_id}` must be a dict keyed by local tip id.", errors)
            for local_tip_id, tip in tip_map.items():
                require(tip.get("id") == local_tip_id, f"`tips.{instance_key}.{npc_id}.{local_tip_id}` must repeat its local id in `id`.", errors)
                require("legacy_id" in tip, f"`tips.{instance_key}.{npc_id}.{local_tip_id}` is missing `legacy_id`.", errors)
                require("legacy_npc_name" in tip and "enUS" in tip["legacy_npc_name"], f"`tips.{instance_key}.{npc_id}.{local_tip_id}` is missing `legacy_npc_name.enUS`.", errors)
                require("text" in tip and "enUS" in tip["text"] and "deDE" in tip["text"], f"`tips.{instance_key}.{npc_id}.{local_tip_id}` must have localized text.", errors)

    for instance_key, tip_map in instance_tips.items():
        require(isinstance(tip_map, dict), f"`instanceTips.{instance_key}` must be a dict keyed by local tip id.", errors)
        for local_tip_id, tip in tip_map.items():
            require(tip.get("id") == local_tip_id, f"`instanceTips.{instance_key}.{local_tip_id}` must repeat its local id in `id`.", errors)
            require("legacy_id" in tip, f"`instanceTips.{instance_key}.{local_tip_id}` is missing `legacy_id`.", errors)
            require("text" in tip and "enUS" in tip["text"] and "deDE" in tip["text"], f"`instanceTips.{instance_key}.{local_tip_id}` must have localized text.", errors)

    for instance_key, details in instance_details.items():
        require(isinstance(details, dict), f"`instanceDetails.{instance_key}` must be a dict.", errors)
        for field, localized_value in details.items():
            require("enUS" in localized_value and "deDE" in localized_value, f"`instanceDetails.{instance_key}.{field}` must have `enUS` and `deDE`.", errors)

    if errors:
        print("Normalized model validation failed:")
        for error in errors:
            print(f"- {error}")
        return 1

    print("Normalized model validation passed.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
