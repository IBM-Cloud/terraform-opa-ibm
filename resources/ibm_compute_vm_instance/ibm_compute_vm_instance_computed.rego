package ibmcloud.resources.computed.ibm_compute_vm_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_vm_instance"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_vm_instance").resources[_]
}
public_bandwidth_limited = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_bandwidth_limited", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
private_interface_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_interface_id", null) |
        res := resources_map[_]
        true
     }
}
public_interface_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_interface_id", null) |
        res := resources_map[_]
        true
     }
}
public_subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_subnet_id", null) |
        res := resources_map[_]
        true
     }
}
public_security_group_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_security_group_ids", null) |
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
ip_address_id_private = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address_id_private", null) |
        res := resources_map[_]
        true
     }
}
private_security_group_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_security_group_ids", null) |
        res := resources_map[_]
        true
     }
}
ipv4_address_private = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv4_address_private", null) |
        res := resources_map[_]
        true
     }
}
ip_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address_id", null) |
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
cores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cores", null) |
        res := resources_map[_]
        true
     }
}
ipv4_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv4_address", null) |
        res := resources_map[_]
        true
     }
}
public_ipv6_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv6_subnet", null) |
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
public_vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_vlan_id", null) |
        res := resources_map[_]
        true
     }
}
disks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disks", null) |
        res := resources_map[_]
        true
     }
}
flavor_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor_key_name", null) |
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
secondary_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}
private_subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_subnet_id", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
public_ipv6_subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv6_subnet_id", null) |
        res := resources_map[_]
        true
     }
}

