package ibmcloud.resources.model.ibm_cd_tekton_pipeline_definition
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_definition"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cd_tekton_pipeline_definition").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cd_tekton_pipeline_definition", "managed").resources[_]
}
scm_source = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scm_source", null) |
        res := resources_map[_]
        true
     }
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
pipeline_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pipeline_id", null) |
        res := resources_map[_]
        true
     }
}

