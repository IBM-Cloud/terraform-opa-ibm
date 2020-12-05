package ibmcloud.resources.after.ibm_app_domain_shared
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_domain_shared"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_app_domain_shared").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
router_group_guid = ret {
    ret := {res.address: object.get(res.attributes, "router_group_guid", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

