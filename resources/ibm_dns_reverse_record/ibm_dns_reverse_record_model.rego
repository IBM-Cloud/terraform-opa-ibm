package ibmcloud.resources.model.ibm_dns_reverse_record
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_reverse_record"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_reverse_record").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_dns_reverse_record", "managed").resources[_]
}
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
        res := resources_map[_]
        true
     }
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

