package ibmcloud.resources.after.ibm_is_instance_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_instance_group").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
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
load_balancer_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer_pool", null) |
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

