package ibmcloud.resources.state.data.ibm_is_ipsec_policies
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ipsec_policies"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_ipsec_policies", "data").resources[_]
}
ipsec_policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipsec_policies", null) |
        res := resources_map[_]
        true
     }
}
