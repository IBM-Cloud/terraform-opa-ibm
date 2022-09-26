package ibmcloud.resources.computed.ibm_cd_tekton_pipeline
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_tekton_pipeline"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cd_tekton_pipeline").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
properties = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "properties", null) |
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
html_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "html_url", null) |
        res := resources_map[_]
        true
     }
}
build_number = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "build_number", null) |
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
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
definitions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "definitions", null) |
        res := resources_map[_]
        true
     }
}
created = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
toolchain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "toolchain", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
triggers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "triggers", null) |
        res := resources_map[_]
        true
     }
}

