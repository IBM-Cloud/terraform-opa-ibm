package ibmcloud.resources.state.ibm_cis_range_app
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_range_app"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_range_app", "managed").resources[_]
}
ip_firewall = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_firewall", null) |
        res := resources_map[_]
        true
     }
}
proxy_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proxy_protocol", null) |
        res := resources_map[_]
        true
     }
}
edge_ips_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "edge_ips_type", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
dns_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_type", null) |
        res := resources_map[_]
        true
     }
}
edge_ips_connectivity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "edge_ips_connectivity", null) |
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
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
origin_dns = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_dns", null) |
        res := resources_map[_]
        true
     }
}
origin_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_port", null) |
        res := resources_map[_]
        true
     }
}
tls = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tls", null) |
        res := resources_map[_]
        true
     }
}
app_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_id", null) |
        res := resources_map[_]
        true
     }
}
dns = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns", null) |
        res := resources_map[_]
        true
     }
}
origin_direct = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_direct", null) |
        res := resources_map[_]
        true
     }
}
traffic_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "traffic_type", null) |
        res := resources_map[_]
        true
     }
}
