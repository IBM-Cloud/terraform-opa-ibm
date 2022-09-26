package ibmcloud.resources.model.ibm_cd_tekton_pipeline_trigger
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_trigger"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cd_tekton_pipeline_trigger").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cd_tekton_pipeline_trigger", "managed").resources[_]
}
trigger = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trigger", null) |
        res := resources_map[_]
        true
     }
}
pipeline_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_id", null) |
        res := resources_map[_]
        true
     }
}

