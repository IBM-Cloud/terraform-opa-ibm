package ibmcloud.resources.computed.ibm_cis_dns_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_dns_record"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_dns_record").resources[_]
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
record_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "record_id", null) |
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
proxiable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proxiable", null) |
        res := resources_map[_]
        true
     }
}
zone_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_name", null) |
        res := resources_map[_]
        true
     }
}

