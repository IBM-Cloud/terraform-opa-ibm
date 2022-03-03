package ibmcloud.resources.planned.ibm_pi_volume
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_volume").resources[_]
}
pi_volume_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_pool", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_size", null) |
        res := resources_map[_]
        true
     }
}
pi_affinity_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_affinity_policy", null) |
        res := resources_map[_]
        true
     }
}
pi_affinity_volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_affinity_volume", null) |
        res := resources_map[_]
        true
     }
}
pi_anti_affinity_volumes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_anti_affinity_volumes", null) |
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
pi_volume_shareable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_shareable", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_type", null) |
        res := resources_map[_]
        true
     }
}
pi_affinity_instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_affinity_instance", null) |
        res := resources_map[_]
        true
     }
}
pi_anti_affinity_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_anti_affinity_instances", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_name", null) |
        res := resources_map[_]
        true
     }
}

