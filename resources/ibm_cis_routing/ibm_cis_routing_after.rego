package ibmcloud.resources.after.ibm_cis_routing
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_routing"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_routing").resources[_]
}
cis_id = ret {
    ret := {res.address: object.get(res.attributes, "cis_id", null) |
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
smart_routing = ret {
    ret := {res.address: object.get(res.attributes, "smart_routing", null) |
        res := resources_map[_]
        true
     }
}

