package ibmcloud.resources.state.data.ibm_is_ike_policies
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ike_policies"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_ike_policies", "data").resources[_]
}
ike_policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ike_policies", null) |
        res := resources_map[_]
        true
     }
}
