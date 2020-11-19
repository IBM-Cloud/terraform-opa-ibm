package ibmcloud.resources.prior.ibm_org
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_org"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_org").resources[_]
}
org = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org", null) |
        res := resources_map[_]
        true
     }
}

