package ibmcloud.resources.prior.ibm_cis_origin_auths
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_auths"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis_origin_auths").resources[_]
}
request_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "request_type", null) |
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
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}

