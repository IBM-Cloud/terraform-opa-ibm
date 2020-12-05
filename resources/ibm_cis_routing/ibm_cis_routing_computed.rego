package ibmcloud.resources.computed.ibm_cis_routing
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_routing"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_routing").resources[_]
}
smart_routing = ret {
    ret := {res.address: object.get(res.attributes, "smart_routing", null) |
        res := resources_map[_]
        true
     }
}

