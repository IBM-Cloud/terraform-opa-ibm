package ibmcloud.resources.computed.ibm_pi_snapshot
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_snapshot"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_snapshot").resources[_]
}
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
        res := resources_map[_]
        true
     }
}
volume_snapshots = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_snapshots", null) |
        res := resources_map[_]
        true
     }
}
last_updated_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_updated_date", null) |
        res := resources_map[_]
        true
     }
}
pi_snap_shot_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_snap_shot_id", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}

