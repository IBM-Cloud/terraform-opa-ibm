package ibmcloud.resources.state.ibm_dns_glb_monitor
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb_monitor"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_glb_monitor", "managed").resources[_]
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
monitor_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "monitor_id", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
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
expected_codes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expected_codes", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
retries = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retries", null) |
        res := resources_map[_]
        true
     }
}
path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "path", null) |
        res := resources_map[_]
        true
     }
}
headers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "headers", null) |
        res := resources_map[_]
        true
     }
}
allow_insecure = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allow_insecure", null) |
        res := resources_map[_]
        true
     }
}
expected_body = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expected_body", null) |
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
method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "method", null) |
        res := resources_map[_]
        true
     }
}
