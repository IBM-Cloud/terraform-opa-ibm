package ibmcloud.resources.model.ibm_is_instance_template
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_template"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance_template").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_template", "managed").resources[_]
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
keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keys", null) |
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
placement_target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_target", null) |
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
placement_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_group", null) |
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
user_data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_data", null) |
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
network_interfaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interfaces", null) |
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
dedicated_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host", null) |
        res := resources_map[_]
        true
     }
}
dedicated_host_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host_group", null) |
        res := resources_map[_]
        true
     }
}
primary_network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_network_interface", null) |
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

