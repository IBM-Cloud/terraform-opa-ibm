package ibmcloud.resources.state.data.ibm_compute_image_template
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_image_template"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_image_template", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id", null) |
        res := resources_map[_]
        true
     }
}
