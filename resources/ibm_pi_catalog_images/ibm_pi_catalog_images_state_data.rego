package ibmcloud.resources.state.data.ibm_pi_catalog_images
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_catalog_images"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_catalog_images", "data").resources[_]
}
sap = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sap", null) |
        res := resources_map[_]
        true
     }
}
vtl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vtl", null) |
        res := resources_map[_]
        true
     }
}
images = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "images", null) |
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
