package ibmcloud.resources.computed.ibm_is_instance_template
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_template"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_template").resources[_]
}
volume_attachments = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_attachments", null) |
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
placement_target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_target", null) |
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
default_trusted_profile_auto_link = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_trusted_profile_auto_link", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}

