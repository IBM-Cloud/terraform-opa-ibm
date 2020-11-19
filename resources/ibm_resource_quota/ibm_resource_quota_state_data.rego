package ibmcloud.resources.state.data.ibm_resource_quota
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_resource_quota"
}

resources_map[attr]{
    attr := state.get_resources("ibm_resource_quota", "data").resources[_]
}
max_apps = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_apps", null) |
        res := resources_map[_]
        true
     }
}
max_instances_per_app = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_instances_per_app", null) |
        res := resources_map[_]
        true
     }
}
max_app_instance_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_app_instance_memory", null) |
        res := resources_map[_]
        true
     }
}
total_app_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_app_memory", null) |
        res := resources_map[_]
        true
     }
}
max_service_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_service_instances", null) |
        res := resources_map[_]
        true
     }
}
vsi_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vsi_limit", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
