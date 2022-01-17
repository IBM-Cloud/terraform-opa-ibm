package ibmcloud.resources.computed.ibm_pi_ike_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_ike_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_ike_policy").resources[_]
}
policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_id", null) |
        res := resources_map[_]
        true
     }
}

