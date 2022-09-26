package ibmcloud.resources.computed.ibm_scc_template_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_template_attachment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_scc_template_attachment").resources[_]
}
attachment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "attachment_id", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}

