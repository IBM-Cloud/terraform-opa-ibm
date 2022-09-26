package ibmcloud.resources.planned.ibm_cd_tekton_pipeline_property
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline_property"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cd_tekton_pipeline_property").resources[_]
}
enum = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enum", null) |
        res := resources_map[_]
        true
     }
}
default_ = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "path", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "value", null) |
        res := resources_map[_]
        true
     }
}

