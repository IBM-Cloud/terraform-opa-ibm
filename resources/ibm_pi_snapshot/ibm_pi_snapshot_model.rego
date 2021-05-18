package ibmcloud.resources.model.ibm_pi_snapshot
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_snapshot"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_snapshot").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_pi_snapshot", "managed").resources[_]
}
last_updated_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_updated_date", null) |
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
pi_snap_shot_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_snap_shot_name", null) |
        res := resources_map[_]
        true
     }
}

