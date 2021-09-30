package ibmcloud.resources.computed.ibm_compute_ssl_certificate
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_ssl_certificate"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_ssl_certificate").resources[_]
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
create_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "create_date", null) |
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
validity_days = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "validity_days", null) |
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

