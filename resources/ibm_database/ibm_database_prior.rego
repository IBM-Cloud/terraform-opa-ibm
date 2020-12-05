package ibmcloud.resources.prior.ibm_database
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_database").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {res.address: object.get(res.attributes, "service", null) |
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
location = ret {
    ret := {res.address: object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}

