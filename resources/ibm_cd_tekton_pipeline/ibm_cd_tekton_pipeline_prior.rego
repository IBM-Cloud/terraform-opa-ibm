package ibmcloud.resources.prior.ibm_cd_tekton_pipeline
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cd_tekton_pipeline").resources[_]
}
pipeline_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_id", null) |
        res := resources_map[_]
        true
     }
}

