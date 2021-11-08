package ibmcloud.resources.planned.ibm_compute_bare_metal
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_bare_metal"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_compute_bare_metal").resources[_]
}
image_template_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_template_id", null) |
        res := resources_map[_]
        true
     }
}
os_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os_key_name", null) |
        res := resources_map[_]
        true
     }
}
disk_key_names = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_key_names", null) |
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
file_storage_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_storage_ids", null) |
        res := resources_map[_]
        true
     }
}
gpu_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu_key_name", null) |
        res := resources_map[_]
        true
     }
}
quote_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "quote_id", null) |
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
network_speed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_speed", null) |
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
unbonded_network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "unbonded_network", null) |
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
ssh_key_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssh_key_ids", null) |
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
post_install_script_uri = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "post_install_script_uri", null) |
        res := resources_map[_]
        true
     }
}
software_guard_extensions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "software_guard_extensions", null) |
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
ipv6_static_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_static_enabled", null) |
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
process_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "process_key_name", null) |
        res := resources_map[_]
        true
     }
}
extended_hardware_testing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "extended_hardware_testing", null) |
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
storage_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_groups", null) |
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
secondary_ip_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secondary_ip_count", null) |
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
tcp_monitoring = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tcp_monitoring", null) |
        res := resources_map[_]
        true
     }
}
restricted_network = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "restricted_network", null) |
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
package_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "package_key_name", null) |
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
user_metadata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_metadata", null) |
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
fixed_config_preset = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "fixed_config_preset", null) |
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
gpu_secondary_key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu_secondary_key_name", null) |
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
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
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
hourly_billing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hourly_billing", null) |
        res := resources_map[_]
        true
     }
}

