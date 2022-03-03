package ibmcloud.resources.state.data.ibm_dl_gateway
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_gateway"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_gateway", "data").resources[_]
}
bfd_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bfd_status", null) |
        res := resources_map[_]
        true
     }
}
bgp_base_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_base_cidr", null) |
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
global = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "global", null) |
        res := resources_map[_]
        true
     }
}
location_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_name", null) |
        res := resources_map[_]
        true
     }
}
metered = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metered", null) |
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
bfd_multiplier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bfd_multiplier", null) |
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
provider_api_managed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provider_api_managed", null) |
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
authentication_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "authentication_key", null) |
        res := resources_map[_]
        true
     }
}
bgp_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_status", null) |
        res := resources_map[_]
        true
     }
}
completion_notice_reject_reason = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "completion_notice_reject_reason", null) |
        res := resources_map[_]
        true
     }
}
connection_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_mode", null) |
        res := resources_map[_]
        true
     }
}
cross_connect_router = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cross_connect_router", null) |
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
vlan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan", null) |
        res := resources_map[_]
        true
     }
}
gateway_vcs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway_vcs", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
link_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "link_status", null) |
        res := resources_map[_]
        true
     }
}
operational_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "operational_status", null) |
        res := resources_map[_]
        true
     }
}
bfd_interval = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bfd_interval", null) |
        res := resources_map[_]
        true
     }
}
bgp_ibm_asn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_ibm_asn", null) |
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
bgp_cer_cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bgp_cer_cidr", null) |
        res := resources_map[_]
        true
     }
}
change_request = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "change_request", null) |
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
bfd_status_updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bfd_status_updated_at", null) |
        res := resources_map[_]
        true
     }
}
macsec_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "macsec_config", null) |
        res := resources_map[_]
        true
     }
}
location_display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_display_name", null) |
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
