package ibmcloud.resources.model.ibm_cis_origin_auth
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_auth"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_origin_auth").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cis_origin_auth", "managed").resources[_]
}
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
        res := resources_map[_]
        true
     }
}
expires_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expires_on", null) |
        res := resources_map[_]
        true
     }
}
auth_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auth_id", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
uploaded_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uploaded_on", null) |
        res := resources_map[_]
        true
     }
}
level = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "level", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
cert_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cert_id", null) |
        res := resources_map[_]
        true
     }
}

