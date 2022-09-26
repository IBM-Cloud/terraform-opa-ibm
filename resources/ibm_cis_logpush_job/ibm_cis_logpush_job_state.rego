package ibmcloud.resources.state.ibm_cis_logpush_job
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_logpush_job"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_logpush_job", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
logpull_options = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logpull_options", null) |
        res := resources_map[_]
        true
     }
}
job_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_id", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
logdna = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logdna", null) |
        res := resources_map[_]
        true
     }
}
dataset = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dataset", null) |
        res := resources_map[_]
        true
     }
}
frequency = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "frequency", null) |
        res := resources_map[_]
        true
     }
}
destination_conf = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_conf", null) |
        res := resources_map[_]
        true
     }
}
