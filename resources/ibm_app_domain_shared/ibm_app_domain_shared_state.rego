package ibmcloud.resources.state.ibm_app_domain_shared
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_domain_shared"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_domain_shared", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
router_group_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "router_group_guid", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
