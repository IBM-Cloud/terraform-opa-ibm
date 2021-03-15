package ibmcloud.resources.state.data.ibm_compute_vm_instance
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_vm_instance"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_vm_instance", "data").resources[_]
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
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
public_interface_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_interface_id", null) |
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
public_subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_subnet_id", null) |
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
secondary_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_addresses", null) |
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
cores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cores", null) |
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
ipv4_address_private = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv4_address_private", null) |
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
secondary_ip_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_count", null) |
        res := resources_map[_]
        true
     }
}
last_known_power_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_known_power_state", null) |
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
ip_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address_id", null) |
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
public_ipv6_subnet_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ipv6_subnet_id", null) |
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
power_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "power_state", null) |
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
ipv6_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_address", null) |
        res := resources_map[_]
        true
     }
}
