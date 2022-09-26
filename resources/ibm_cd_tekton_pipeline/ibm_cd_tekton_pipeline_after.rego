package ibmcloud.resources.after.ibm_cd_tekton_pipeline
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cd_tekton_pipeline").resources[_]
}
pipeline_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_id", null) |
        res := resources_map[_]
        true
     }
}
pipeline_definition = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_definition", null) |
        res := resources_map[_]
        true
     }
}
worker = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker", null) |
        res := resources_map[_]
        true
     }
}

