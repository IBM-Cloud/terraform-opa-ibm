package ibmcloud.resources.after.ibm_cd_tekton_pipeline_definition
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_definition"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cd_tekton_pipeline_definition").resources[_]
}
pipeline_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_id", null) |
        res := resources_map[_]
        true
     }
}
scm_source = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scm_source", null) |
        res := resources_map[_]
        true
     }
}

