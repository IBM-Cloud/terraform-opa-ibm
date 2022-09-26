package ibmcloud.resources.computed.ibm_atracker_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_route"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_atracker_route").resources[_]
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
created = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created", null) |
        res := resources_map[_]
        true
     }
}
updated = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
api_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_version", null) |
        res := resources_map[_]
        true
     }
}

