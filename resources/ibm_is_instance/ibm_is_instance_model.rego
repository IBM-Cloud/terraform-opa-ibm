package ibmcloud.resources.model.ibm_is_instance
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_instance", "managed").resources[_]
}
primary_network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_network_interface", null) |
        res := resources_map[_]
        true
     }
}
boot_volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "boot_volume", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}
keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keys", null) |
        res := resources_map[_]
        true
     }
}
wait_before_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_before_delete", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
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
force_recovery_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_recovery_time", null) |
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
volume_attachments = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachments", null) |
        res := resources_map[_]
        true
     }
}
gpu = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gpu", null) |
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
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile", null) |
        res := resources_map[_]
        true
     }
}
network_interfaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interfaces", null) |
        res := resources_map[_]
        true
     }
}
volumes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volumes", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}
user_data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_data", null) |
        res := resources_map[_]
        true
     }
}
image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image", null) |
        res := resources_map[_]
        true
     }
}
auto_delete_volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auto_delete_volume", null) |
        res := resources_map[_]
        true
     }
}
vcpu = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vcpu", null) |
        res := resources_map[_]
        true
     }
}

