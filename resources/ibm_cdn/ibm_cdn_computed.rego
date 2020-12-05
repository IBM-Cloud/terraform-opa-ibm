package ibmcloud.resources.computed.ibm_cdn
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cdn"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cdn").resources[_]
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
cname = ret {
    ret := {res.address: object.get(res.attributes, "cname", null) |
        res := resources_map[_]
        true
     }
}
header = ret {
    ret := {res.address: object.get(res.attributes, "header", null) |
        res := resources_map[_]
        true
     }
}

