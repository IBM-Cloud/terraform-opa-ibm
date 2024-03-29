package ibmcloud.resources.model.ibm_app_route
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_route"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_app_route").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_app_route", "managed").resources[_]
}
path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "path", null) |
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
host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host", null) |
        res := resources_map[_]
        true
     }
}
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
domain_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_guid", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}

