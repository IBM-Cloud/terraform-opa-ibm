package ibmcloud.resources.state.data.ibm_cd_tekton_pipeline_trigger
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_trigger"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cd_tekton_pipeline_trigger", "data").resources[_]
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
properties = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "properties", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
concurrency = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "concurrency", null) |
        res := resources_map[_]
        true
     }
}
secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret", null) |
        res := resources_map[_]
        true
     }
}
service_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_id", null) |
        res := resources_map[_]
        true
     }
}
cron = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cron", null) |
        res := resources_map[_]
        true
     }
}
pipeline_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_id", null) |
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
event_listener = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "event_listener", null) |
        res := resources_map[_]
        true
     }
}
worker = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker", null) |
        res := resources_map[_]
        true
     }
}
disabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disabled", null) |
        res := resources_map[_]
        true
     }
}
trigger_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trigger_id", null) |
        res := resources_map[_]
        true
     }
}
timezone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timezone", null) |
        res := resources_map[_]
        true
     }
}
scm_source = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scm_source", null) |
        res := resources_map[_]
        true
     }
}
events = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "events", null) |
        res := resources_map[_]
        true
     }
}
