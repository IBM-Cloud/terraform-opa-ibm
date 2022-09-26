package ibmcloud.resources.model.ibm_container_alb_create
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb_create"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_container_alb_create").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_container_alb_create", "managed").resources[_]
}
ingress_image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_image", null) |
        res := resources_map[_]
        true
     }
}
vlan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vlan_id", null) |
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
disable_deployment = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disable_deployment", null) |
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
enable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable", null) |
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
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
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
ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip", null) |
        res := resources_map[_]
        true
     }
}
nlb_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_version", null) |
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
replicas = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "replicas", null) |
        res := resources_map[_]
        true
     }
}

