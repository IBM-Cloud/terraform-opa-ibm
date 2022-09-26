package ibmcloud.resources.state.data.ibm_is_vpn_server
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server", "data").resources[_]
}
security_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_groups", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
private_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ips", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
enable_split_tunneling = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable_split_tunneling", null) |
        res := resources_map[_]
        true
     }
}
health_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_state", null) |
        res := resources_map[_]
        true
     }
}
client_idle_timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_idle_timeout", null) |
        res := resources_map[_]
        true
     }
}
client_ip_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_ip_pool", null) |
        res := resources_map[_]
        true
     }
}
lifecycle_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lifecycle_state", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identifier", null) |
        res := resources_map[_]
        true
     }
}
client_authentication = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_authentication", null) |
        res := resources_map[_]
        true
     }
}
client_auto_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_auto_delete", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
        res := resources_map[_]
        true
     }
}
client_auto_delete_timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_auto_delete_timeout", null) |
        res := resources_map[_]
        true
     }
}
client_dns_server_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_dns_server_ips", null) |
        res := resources_map[_]
        true
     }
}
