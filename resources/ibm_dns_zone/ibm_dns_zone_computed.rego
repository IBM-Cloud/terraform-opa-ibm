package ibmcloud.resources.computed.ibm_dns_zone
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_zone"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_zone").resources[_]
}
created_on = ret {
    ret := {res.address: object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {res.address: object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
zone_id = ret {
    ret := {res.address: object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
state_ = ret {
    ret := {res.address: object.get(res.attributes, "state_", null) |
        res := resources_map[_]
        true
     }
}

