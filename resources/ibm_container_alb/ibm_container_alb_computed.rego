package ibmcloud.resources.computed.ibm_container_alb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_alb").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
user_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_ip", null) |
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
alb_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alb_type", null) |
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
disable_deployment = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disable_deployment", null) |
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

