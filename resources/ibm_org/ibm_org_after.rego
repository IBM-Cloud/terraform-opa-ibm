package ibmcloud.resources.after.ibm_org
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_org"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_org").resources[_]
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

