package ibmcloud.resources.state.data.ibm_app
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app", "data").resources[_]
}
buildpack = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "buildpack", null) |
        res := resources_map[_]
        true
     }
}
route_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_guid", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
health_check_http_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_check_http_endpoint", null) |
        res := resources_map[_]
        true
     }
}
health_check_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_check_type", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
disk_quota = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_quota", null) |
        res := resources_map[_]
        true
     }
}
service_instance_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_guid", null) |
        res := resources_map[_]
        true
     }
}
package_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "package_state", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
health_check_timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_check_timeout", null) |
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
environment_json = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "environment_json", null) |
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
