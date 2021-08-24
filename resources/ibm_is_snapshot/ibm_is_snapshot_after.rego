package ibmcloud.resources.after.ibm_is_snapshot
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_snapshot"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_snapshot").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
source_volume = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_volume", null) |
        res := resources_map[_]
        true
     }
}

