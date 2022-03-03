package ibmcloud.resources.after.ibm_hpcs
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_hpcs").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
signature_server_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "signature_server_url", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
admins = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "admins", null) |
        res := resources_map[_]
        true
     }
}
failover_units = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "failover_units", null) |
        res := resources_map[_]
        true
     }
}
revocation_threshold = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "revocation_threshold", null) |
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
service_endpoints = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_endpoints", null) |
        res := resources_map[_]
        true
     }
}
signature_threshold = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "signature_threshold", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
units = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "units", null) |
        res := resources_map[_]
        true
     }
}

