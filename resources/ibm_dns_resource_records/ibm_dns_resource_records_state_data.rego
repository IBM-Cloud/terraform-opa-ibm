package ibmcloud.resources.state.data.ibm_dns_resource_records
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_resource_records"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_resource_records", "data").resources[_]
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
dns_resource_records = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_resource_records", null) |
        res := resources_map[_]
        true
     }
}
