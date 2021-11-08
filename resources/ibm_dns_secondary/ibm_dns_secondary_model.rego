package ibmcloud.resources.model.ibm_dns_secondary
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_secondary"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_secondary").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_dns_secondary", "managed").resources[_]
}
master_ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "master_ip_address", null) |
        res := resources_map[_]
        true
     }
}
transfer_frequency = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "transfer_frequency", null) |
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
status_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_id", null) |
        res := resources_map[_]
        true
     }
}
status_text = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_text", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

