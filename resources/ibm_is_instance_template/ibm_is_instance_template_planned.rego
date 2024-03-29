package ibmcloud.resources.planned.ibm_is_instance_template
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_template"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance_template").resources[_]
}
default_trusted_profile_auto_link = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_trusted_profile_auto_link", null) |
        res := resources_map[_]
        true
     }
}
default_trusted_profile_target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_trusted_profile_target", null) |
        res := resources_map[_]
        true
     }
}
total_volume_bandwidth = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_volume_bandwidth", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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
metadata_service_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metadata_service_enabled", null) |
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
network_interfaces = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interfaces", null) |
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
availability_policy_host_failure = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "availability_policy_host_failure", null) |
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
image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image", null) |
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
profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile", null) |
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
primary_network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_network_interface", null) |
        res := resources_map[_]
        true
     }
}

