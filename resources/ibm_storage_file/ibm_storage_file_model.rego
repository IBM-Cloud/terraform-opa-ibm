package ibmcloud.resources.model.ibm_storage_file
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_storage_file"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_storage_file").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_storage_file", "managed").resources[_]
}
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
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
allowed_subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_subnets", null) |
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
volumename = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volumename", null) |
        res := resources_map[_]
        true
     }
}
allowed_virtual_guest_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_virtual_guest_ids", null) |
        res := resources_map[_]
        true
     }
}
mountpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mountpoint", null) |
        res := resources_map[_]
        true
     }
}
iops = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iops", null) |
        res := resources_map[_]
        true
     }
}
snapshot_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "snapshot_capacity", null) |
        res := resources_map[_]
        true
     }
}
allowed_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}
snapshot_schedule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "snapshot_schedule", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "capacity", null) |
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
allowed_hardware_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_hardware_ids", null) |
        res := resources_map[_]
        true
     }
}

