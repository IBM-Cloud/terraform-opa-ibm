package ibmcloud.resources.planned.ibm_pi_volume
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_volume").resources[_]
}
pi_volume_name = ret {
    ret := {res.address: object.get(res.attributes, "pi_volume_name", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_size = ret {
    ret := {res.address: object.get(res.attributes, "pi_volume_size", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_shareable = ret {
    ret := {res.address: object.get(res.attributes, "pi_volume_shareable", null) |
        res := resources_map[_]
        true
     }
}
pi_volume_type = ret {
    ret := {res.address: object.get(res.attributes, "pi_volume_type", null) |
        res := resources_map[_]
        true
     }
}

