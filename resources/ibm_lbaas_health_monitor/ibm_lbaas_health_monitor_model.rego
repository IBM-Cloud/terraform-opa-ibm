package ibmcloud.resources.model.ibm_lbaas_health_monitor
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas_health_monitor"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lbaas_health_monitor").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_lbaas_health_monitor", "managed").resources[_]
}
url_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url_path", null) |
        res := resources_map[_]
        true
     }
}
monitor_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "monitor_id", null) |
        res := resources_map[_]
        true
     }
}
lbaas_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lbaas_id", null) |
        res := resources_map[_]
        true
     }
}
protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "protocol", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
interval = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "interval", null) |
        res := resources_map[_]
        true
     }
}
max_retries = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_retries", null) |
        res := resources_map[_]
        true
     }
}
timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timeout", null) |
        res := resources_map[_]
        true
     }
}

