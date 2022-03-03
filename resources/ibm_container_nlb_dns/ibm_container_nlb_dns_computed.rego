package ibmcloud.resources.computed.ibm_container_nlb_dns
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_nlb_dns"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_nlb_dns").resources[_]
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
nlb_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_type", null) |
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

