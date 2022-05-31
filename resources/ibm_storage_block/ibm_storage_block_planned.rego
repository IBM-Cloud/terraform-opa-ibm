package ibmcloud.resources.planned.ibm_storage_block
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_storage_block"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_storage_block").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
os_format_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os_format_type", null) |
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
iops = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iops", null) |
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
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
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
hourly_billing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hourly_billing", null) |
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
allowed_virtual_guest_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_virtual_guest_ids", null) |
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

