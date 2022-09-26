package ibmcloud.resources.planned.ibm_cis_logpush_job
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_logpush_job"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_logpush_job").resources[_]
}
dataset = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dataset", null) |
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
logdna = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logdna", null) |
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
frequency = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "frequency", null) |
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

