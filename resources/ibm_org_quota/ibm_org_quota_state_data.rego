package ibmcloud.resources.state.data.ibm_org_quota
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_org_quota"
}

resources_map[attr]{
    attr := state.get_resources("ibm_org_quota", "data").resources[_]
}
total_routes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_routes", null) |
        res := resources_map[_]
        true
     }
}
instance_memory_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_memory_limit", null) |
        res := resources_map[_]
        true
     }
}
trial_db_allowed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trial_db_allowed", null) |
        res := resources_map[_]
        true
     }
}
app_instance_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_instance_limit", null) |
        res := resources_map[_]
        true
     }
}
total_private_domains = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_private_domains", null) |
        res := resources_map[_]
        true
     }
}
total_reserved_route_ports = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_reserved_route_ports", null) |
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
non_basic_services_allowed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "non_basic_services_allowed", null) |
        res := resources_map[_]
        true
     }
}
total_services = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_services", null) |
        res := resources_map[_]
        true
     }
}
memory_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory_limit", null) |
        res := resources_map[_]
        true
     }
}
app_tasks_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_tasks_limit", null) |
        res := resources_map[_]
        true
     }
}
total_service_keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_service_keys", null) |
        res := resources_map[_]
        true
     }
}
