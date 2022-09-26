package ibmcloud.resources.state.ibm_compute_ssl_certificate
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_ssl_certificate"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_ssl_certificate", "managed").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
intermediate_certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "intermediate_certificate", null) |
        res := resources_map[_]
        true
     }
}
validity_days = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "validity_days", null) |
        res := resources_map[_]
        true
     }
}
validity_end = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "validity_end", null) |
        res := resources_map[_]
        true
     }
}
key_size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_size", null) |
        res := resources_map[_]
        true
     }
}
modify_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modify_date", null) |
        res := resources_map[_]
        true
     }
}
create_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "create_date", null) |
        res := resources_map[_]
        true
     }
}
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
        res := resources_map[_]
        true
     }
}
private_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_key", null) |
        res := resources_map[_]
        true
     }
}
common_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "common_name", null) |
        res := resources_map[_]
        true
     }
}
organization_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "organization_name", null) |
        res := resources_map[_]
        true
     }
}
validity_begin = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "validity_begin", null) |
        res := resources_map[_]
        true
     }
}
