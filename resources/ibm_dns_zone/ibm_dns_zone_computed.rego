package ibmcloud.resources.computed.ibm_dns_zone
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_zone"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_zone").resources[_]
}
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
state_ = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}

