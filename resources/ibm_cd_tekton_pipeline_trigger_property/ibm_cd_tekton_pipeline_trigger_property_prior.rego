package ibmcloud.resources.prior.ibm_cd_tekton_pipeline_trigger_property
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_trigger_property"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cd_tekton_pipeline_trigger_property").resources[_]
}
trigger_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trigger_id", null) |
        res := resources_map[_]
        true
     }
}
property_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "property_name", null) |
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

