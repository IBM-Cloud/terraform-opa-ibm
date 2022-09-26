package ibmcloud.resources.computed.ibm_cis_origin_auth
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_auth"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_origin_auth").resources[_]
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
uploaded_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uploaded_on", null) |
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

