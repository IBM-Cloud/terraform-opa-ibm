package ibmcloud.resources.planned.ibm_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_app").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {res.address: object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
service_instance_guid = ret {
    ret := {res.address: object.get(res.attributes, "service_instance_guid", null) |
        res := resources_map[_]
        true
     }
}
instances = ret {
    ret := {res.address: object.get(res.attributes, "instances", null) |
        res := resources_map[_]
        true
     }
}
buildpack = ret {
    ret := {res.address: object.get(res.attributes, "buildpack", null) |
        res := resources_map[_]
        true
     }
}
environment_json = ret {
    ret := {res.address: object.get(res.attributes, "environment_json", null) |
        res := resources_map[_]
        true
     }
}
route_guid = ret {
    ret := {res.address: object.get(res.attributes, "route_guid", null) |
        res := resources_map[_]
        true
     }
}
health_check_type = ret {
    ret := {res.address: object.get(res.attributes, "health_check_type", null) |
        res := resources_map[_]
        true
     }
}
app_version = ret {
    ret := {res.address: object.get(res.attributes, "app_version", null) |
        res := resources_map[_]
        true
     }
}
wait_time_minutes = ret {
    ret := {res.address: object.get(res.attributes, "wait_time_minutes", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
health_check_http_endpoint = ret {
    ret := {res.address: object.get(res.attributes, "health_check_http_endpoint", null) |
        res := resources_map[_]
        true
     }
}
health_check_timeout = ret {
    ret := {res.address: object.get(res.attributes, "health_check_timeout", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {res.address: object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
disk_quota = ret {
    ret := {res.address: object.get(res.attributes, "disk_quota", null) |
        res := resources_map[_]
        true
     }
}
app_path = ret {
    ret := {res.address: object.get(res.attributes, "app_path", null) |
        res := resources_map[_]
        true
     }
}
command = ret {
    ret := {res.address: object.get(res.attributes, "command", null) |
        res := resources_map[_]
        true
     }
}

