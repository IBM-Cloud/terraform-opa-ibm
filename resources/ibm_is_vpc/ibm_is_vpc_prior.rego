package ibmcloud.resources.prior.ibm_is_vpc
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_vpc"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpc").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

