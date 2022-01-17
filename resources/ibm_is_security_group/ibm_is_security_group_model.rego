package ibmcloud.resources.model.ibm_is_security_group
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_security_group").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_security_group", "managed").resources[_]
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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

