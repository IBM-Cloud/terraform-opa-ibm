package ibmcloud.resources.computed.ibm_hardware_firewall_shared
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_hardware_firewall_shared"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_hardware_firewall_shared").resources[_]
}
billing_item_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_item_id", null) |
        res := resources_map[_]
        true
     }
}

