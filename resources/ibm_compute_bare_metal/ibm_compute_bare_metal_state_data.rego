package ibmcloud.resources.state.data.ibm_compute_bare_metal
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_bare_metal"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_bare_metal", "data").resources[_]
}
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
private_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_subnet", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
private_network_only = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_network_only", null) |
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
public_bandwidth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_bandwidth", null) |
        res := resources_map[_]
        true
     }
}
redundant_network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "redundant_network", null) |
        res := resources_map[_]
        true
     }
}
secondary_ip_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_count", null) |
        res := resources_map[_]
        true
     }
}
public_ipv4_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv4_address_id", null) |
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
hourly_billing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hourly_billing", null) |
        res := resources_map[_]
        true
     }
}
user_metadata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_metadata", null) |
        res := resources_map[_]
        true
     }
}
public_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_subnet", null) |
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
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
unbonded_network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "unbonded_network", null) |
        res := resources_map[_]
        true
     }
}
secondary_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}
global_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "global_identifier", null) |
        res := resources_map[_]
        true
     }
}
os_reference_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os_reference_code", null) |
        res := resources_map[_]
        true
     }
}
ipv6_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_enabled", null) |
        res := resources_map[_]
        true
     }
}
ipv6_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_address_id", null) |
        res := resources_map[_]
        true
     }
}
redundant_power_supply = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "redundant_power_supply", null) |
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
private_ipv4_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
private_ipv4_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ipv4_address_id", null) |
        res := resources_map[_]
        true
     }
}
ipv6_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_address", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
block_storage_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "block_storage_ids", null) |
        res := resources_map[_]
        true
     }
}
file_storage_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_storage_ids", null) |
        res := resources_map[_]
        true
     }
}
network_speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_speed", null) |
        res := resources_map[_]
        true
     }
}
