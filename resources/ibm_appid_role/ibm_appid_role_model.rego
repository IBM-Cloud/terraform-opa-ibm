package ibmcloud.resources.model.ibm_appid_role
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_role"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_role").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_appid_role", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
access = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access", null) |
        res := resources_map[_]
        true
     }
}
role_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "role_id", null) |
        res := resources_map[_]
        true
     }
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}

