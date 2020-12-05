package ibmcloud.resources.computed.ibm_cis_domain
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_domain"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_domain").resources[_]
}
paused = ret {
    ret := {res.address: object.get(res.attributes, "paused", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
name_servers = ret {
    ret := {res.address: object.get(res.attributes, "name_servers", null) |
        res := resources_map[_]
        true
     }
}
original_name_servers = ret {
    ret := {res.address: object.get(res.attributes, "original_name_servers", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {res.address: object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}

