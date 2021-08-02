package ibmcloud.resources.model.ibm_org
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_org"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_org").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_org", "managed").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
org_quota_definition_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_quota_definition_guid", null) |
        res := resources_map[_]
        true
     }
}
billing_managers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_managers", null) |
        res := resources_map[_]
        true
     }
}
managers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managers", null) |
        res := resources_map[_]
        true
     }
}
auditors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auditors", null) |
        res := resources_map[_]
        true
     }
}
users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "users", null) |
        res := resources_map[_]
        true
     }
}

