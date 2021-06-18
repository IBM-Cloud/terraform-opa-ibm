package ibmcloud.resources.after.ibm_dl_provider_gateway
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_provider_gateway"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_dl_provider_gateway").resources[_]
}
customer_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "customer_account_id", null) |
        res := resources_map[_]
        true
     }
}
bgp_cer_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_cer_cidr", null) |
        res := resources_map[_]
        true
     }
}
speed_mbps = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "speed_mbps", null) |
        res := resources_map[_]
        true
     }
}
bgp_ibm_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_ibm_cidr", null) |
        res := resources_map[_]
        true
     }
}
bgp_asn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_asn", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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

