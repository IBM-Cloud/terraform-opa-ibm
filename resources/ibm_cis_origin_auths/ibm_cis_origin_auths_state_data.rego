package ibmcloud.resources.state.data.ibm_cis_origin_auths
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_auths"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_origin_auths", "data").resources[_]
}
request_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "request_type", null) |
        res := resources_map[_]
        true
     }
}
origin_pull_settings_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_pull_settings_enabled", null) |
        res := resources_map[_]
        true
     }
}
origin_pull_certs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origin_pull_certs", null) |
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
