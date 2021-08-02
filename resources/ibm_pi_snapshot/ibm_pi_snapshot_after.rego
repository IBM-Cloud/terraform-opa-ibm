package ibmcloud.resources.after.ibm_pi_snapshot
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_snapshot"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_pi_snapshot").resources[_]
}
pi_snap_shot_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_snap_shot_name", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_ids", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}

