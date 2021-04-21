package ibmcloud.resources.prior.ibm_compute_bare_metal
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_bare_metal"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_compute_bare_metal").resources[_]
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
global_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "global_identifier", null) |
        res := resources_map[_]
        true
     }
}

