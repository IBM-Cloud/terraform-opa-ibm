package ibmcloud.resources.computed.ibm_cd_tekton_pipeline_trigger_property
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_trigger_property"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cd_tekton_pipeline_trigger_property").resources[_]
}

