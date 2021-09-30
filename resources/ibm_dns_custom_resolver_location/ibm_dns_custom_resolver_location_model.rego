package ibmcloud.resources.model.ibm_dns_custom_resolver_location
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver_location"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_custom_resolver_location").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_dns_custom_resolver_location", "managed").resources[_]
}
healthy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "healthy", null) |
        res := resources_map[_]
        true
     }
}
dns_server_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_server_ip", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
resolver_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resolver_id", null) |
        res := resources_map[_]
        true
     }
}
location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_id", null) |
        res := resources_map[_]
        true
     }
}
subnet_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet_crn", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}

