package ibmcloud.resources.state.data.ibm_app_domain_private
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_domain_private"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_domain_private", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
