package ibmcloud.resources.computed.ibm_firewall_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_firewall_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_firewall_policy").resources[_]
}

