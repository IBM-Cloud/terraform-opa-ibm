package ibmcloud.resources.planned.ibm_pi_volume_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume_attach"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_volume_attach").resources[_]
}
volumeattachid = ret {
    ret := {res.address: object.get(res.attributes, "volumeattachid", null) |
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
pi_volume_attach_name = ret {
    ret := {res.address: object.get(res.attributes, "pi_volume_attach_name", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {res.address: object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
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

