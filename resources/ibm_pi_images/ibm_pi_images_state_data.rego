package ibmcloud.resources.state.data.ibm_pi_images
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_images"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_images", "data").resources[_]
}
image_info = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_info", null) |
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
