package ibmcloud.resources.computed.ibm_dns_secondary
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_secondary"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_secondary").resources[_]
}
status_id = ret {
    ret := {res.address: object.get(res.attributes, "status_id", null) |
        res := resources_map[_]
        true
     }
}
status_text = ret {
    ret := {res.address: object.get(res.attributes, "status_text", null) |
        res := resources_map[_]
        true
     }
}

