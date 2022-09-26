package ibmcloud.resources.computed.ibm_cd_tekton_pipeline_definition
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_definition"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cd_tekton_pipeline_definition").resources[_]
}
service_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_id", null) |
        res := resources_map[_]
        true
     }
}
definition_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "definition_id", null) |
        res := resources_map[_]
        true
     }
}

