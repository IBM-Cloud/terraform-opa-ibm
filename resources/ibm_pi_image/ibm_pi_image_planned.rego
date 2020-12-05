package ibmcloud.resources.planned.ibm_pi_image
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_image"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_image").resources[_]
}
pi_image_name = ret {
    ret := {res.address: object.get(res.attributes, "pi_image_name", null) |
        res := resources_map[_]
        true
     }
}
pi_image_id = ret {
    ret := {res.address: object.get(res.attributes, "pi_image_id", null) |
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

