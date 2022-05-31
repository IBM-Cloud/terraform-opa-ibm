package ibmcloud.resources.state.ibm_container_nlb_dns
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_nlb_dns"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_nlb_dns", "managed").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
nlb_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_ips", null) |
        res := resources_map[_]
        true
     }
}
nlb_ssl_secret_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_ssl_secret_name", null) |
        res := resources_map[_]
        true
     }
}
nlb_ssl_secret_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_ssl_secret_status", null) |
        res := resources_map[_]
        true
     }
}
secret_namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_namespace", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
nlb_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_host", null) |
        res := resources_map[_]
        true
     }
}
nlb_dns_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_dns_type", null) |
        res := resources_map[_]
        true
     }
}
nlb_monitor_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_monitor_state", null) |
        res := resources_map[_]
        true
     }
}
nlb_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_type", null) |
        res := resources_map[_]
        true
     }
}
