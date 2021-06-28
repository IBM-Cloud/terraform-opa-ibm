package ibmcloud.resources.planned.ibm_dns_reverse_record
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_reverse_record"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_reverse_record").resources[_]
}
ipaddress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipaddress", null) |
        res := resources_map[_]
        true
     }
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
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

