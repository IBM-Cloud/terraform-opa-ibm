package ibmcloud.resources.prior.ibm_enterprises
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprises"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_enterprises").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

