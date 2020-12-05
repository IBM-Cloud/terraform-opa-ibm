package ibmcloud.resources.planned.ibm_is_vpc
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_vpc").resources[_]
}
resource_group = ret {
    ret := {res.address: object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
address_prefix_management = ret {
    ret := {res.address: object.get(res.attributes, "address_prefix_management", null) |
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
classic_access = ret {
    ret := {res.address: object.get(res.attributes, "classic_access", null) |
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
default_network_acl = ret {
    ret := {res.address: object.get(res.attributes, "default_network_acl", null) |
        res := resources_map[_]
        true
     }
}

