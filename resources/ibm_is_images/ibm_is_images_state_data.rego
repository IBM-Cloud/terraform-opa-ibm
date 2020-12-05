package ibmcloud.resources.state.data.ibm_is_images
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_images"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_images", "data").resources[_]
}
images = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "images", null) |
        res := resources_map[_]
        true
     }
}
