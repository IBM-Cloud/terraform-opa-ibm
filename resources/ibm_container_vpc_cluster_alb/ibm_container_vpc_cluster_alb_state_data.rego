package ibmcloud.resources.state.data.ibm_container_vpc_cluster_alb
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_cluster_alb"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_vpc_cluster_alb", "data").resources[_]
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
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
alb_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alb_id", null) |
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
enable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable", null) |
        res := resources_map[_]
        true
     }
}
load_balancer_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer_hostname", null) |
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
