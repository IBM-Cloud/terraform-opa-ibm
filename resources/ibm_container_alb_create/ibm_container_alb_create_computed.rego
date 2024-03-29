package ibmcloud.resources.computed.ibm_container_alb_create
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb_create"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_alb_create").resources[_]
}
alb_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alb_id", null) |
        res := resources_map[_]
        true
     }
}
replicas = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "replicas", null) |
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
user_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_ip", null) |
        res := resources_map[_]
        true
     }
}
resize = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resize", null) |
        res := resources_map[_]
        true
     }
}

