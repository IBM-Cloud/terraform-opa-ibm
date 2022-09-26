package ibmcloud.resources.computed.ibm_en_source
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_source"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_en_source").resources[_]
}
source_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_id", null) |
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

