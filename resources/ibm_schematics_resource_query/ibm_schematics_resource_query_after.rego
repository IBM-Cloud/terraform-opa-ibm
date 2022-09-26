package ibmcloud.resources.after.ibm_schematics_resource_query
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_resource_query"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_schematics_resource_query").resources[_]
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
queries = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "queries", null) |
        res := resources_map[_]
        true
     }
}

