package ibmcloud.resources.state.ibm_network_gateway
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_gateway"
}

resources_map[attr]{
    attr := state.get_resources("ibm_network_gateway", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
post_install_script_uri = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "post_install_script_uri", null) |
        res := resources_map[_]
        true
     }
}
private_ip_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ip_address_id", null) |
        res := resources_map[_]
        true
     }
}
private_ipv4_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
public_ipv4_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
private_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
public_ipv6_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv6_address_id", null) |
        res := resources_map[_]
        true
     }
}
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
ssh_key_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssh_key_ids", null) |
        res := resources_map[_]
        true
     }
}
public_ip_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ip_address_id", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}
associated_vlans = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "associated_vlans", null) |
        res := resources_map[_]
        true
     }
}
