package ibmcloud.resources.computed.ibm_cis_alert
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_alert"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_alert").resources[_]
}
policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_id", null) |
        res := resources_map[_]
        true
     }
}

