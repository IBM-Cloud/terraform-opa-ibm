package ibmcloud.resources.computed.ibm_compute_bare_metal
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_bare_metal"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_bare_metal").resources[_]
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
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
private_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_subnet", null) |
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
private_ipv4_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_ipv4_address_id", null) |
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
private_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_vlan_id", null) |
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
block_storage_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "block_storage_ids", null) |
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
file_storage_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_storage_ids", null) |
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
ipv6_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_address", null) |
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
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
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
secondary_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_addresses", null) |
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
public_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_subnet", null) |
        res := resources_map[_]
        true
     }
}

