package ibmcloud.resources.model.ibm_is_instance_group
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance_group").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_group", "managed").resources[_]
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
instance_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_count", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
load_balancer_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer_pool", null) |
        res := resources_map[_]
        true
     }
}
instance_template = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_template", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
managers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managers", null) |
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
application_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "application_port", null) |
        res := resources_map[_]
        true
     }
}
load_balancer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer", null) |
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
instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instances", null) |
        res := resources_map[_]
        true
     }
}

