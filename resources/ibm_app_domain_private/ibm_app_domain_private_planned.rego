package ibmcloud.resources.planned.ibm_app_domain_private
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_domain_private"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_app_domain_private").resources[_]
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
org_guid = ret {
    ret := {res.address: object.get(res.attributes, "org_guid", null) |
        res := resources_map[_]
        true
     }
}

