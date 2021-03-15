package ibmcloud.resources.after.ibm_compute_autoscale_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_autoscale_group"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_compute_autoscale_group").resources[_]
}
regional_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "regional_group", null) |
        res := resources_map[_]
        true
     }
}
minimum_member_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minimum_member_count", null) |
        res := resources_map[_]
        true
     }
}
virtual_server_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_server_id", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
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
maximum_member_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "maximum_member_count", null) |
        res := resources_map[_]
        true
     }
}
cooldown = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cooldown", null) |
        res := resources_map[_]
        true
     }
}
termination_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "termination_policy", null) |
        res := resources_map[_]
        true
     }
}
health_check = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_check", null) |
        res := resources_map[_]
        true
     }
}
virtual_guest_member_template = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_guest_member_template", null) |
        res := resources_map[_]
        true
     }
}
network_vlan_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_vlan_ids", null) |
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

