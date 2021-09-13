package ibmcloud.resources.computed.ibm_dns_resource_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_resource_record"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_resource_record").resources[_]
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
resource_record_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_record_id", null) |
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

