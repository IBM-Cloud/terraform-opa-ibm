package ibmcloud.resources.model.ibm_pi_image
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_image"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_image").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_pi_image", "managed").resources[_]
}
image_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_id", null) |
        res := resources_map[_]
        true
     }
}
pi_image_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_name", null) |
        res := resources_map[_]
        true
     }
}
pi_image_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_image_id", null) |
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

