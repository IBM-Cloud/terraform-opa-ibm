package ibmcloud.resources.state.ibm_cis_domain
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_domain"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_domain", "managed").resources[_]
}
name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name_servers", null) |
        res := resources_map[_]
        true
     }
}
original_name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "original_name_servers", null) |
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
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
paused = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "paused", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
verification_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "verification_key", null) |
        res := resources_map[_]
        true
     }
}
cname_suffix = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cname_suffix", null) |
        res := resources_map[_]
        true
     }
}
