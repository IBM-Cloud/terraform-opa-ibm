package ibmcloud.resources.after.ibm_is_vpn_server
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpn_server").resources[_]
}
client_ip_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_ip_pool", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
security_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_groups", null) |
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
enable_split_tunneling = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable_split_tunneling", null) |
        res := resources_map[_]
        true
     }
}
certificate_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_crn", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
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

