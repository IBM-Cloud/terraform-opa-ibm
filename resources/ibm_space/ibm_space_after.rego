package ibmcloud.resources.after.ibm_space
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_space"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_space").resources[_]
}
auditors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auditors", null) |
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
developers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "developers", null) |
        res := resources_map[_]
        true
     }
}
space_quota = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_quota", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
org = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org", null) |
        res := resources_map[_]
        true
     }
}

