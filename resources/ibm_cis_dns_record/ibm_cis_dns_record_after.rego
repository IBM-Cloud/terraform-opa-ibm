package ibmcloud.resources.after.ibm_cis_dns_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_cis_dns_record"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_dns_record").resources[_]
}
content = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "data", null) |
        res := resources_map[_]
        true
     }
}
proxied = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proxied", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}

