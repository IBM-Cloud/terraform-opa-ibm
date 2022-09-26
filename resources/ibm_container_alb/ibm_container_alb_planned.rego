package ibmcloud.resources.planned.ibm_container_alb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_container_alb").resources[_]
}
user_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_ip", null) |
        res := resources_map[_]
        true
     }
}
disable_deployment = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disable_deployment", null) |
        res := resources_map[_]
        true
     }
}
enable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
alb_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alb_id", null) |
        res := resources_map[_]
        true
     }
}

