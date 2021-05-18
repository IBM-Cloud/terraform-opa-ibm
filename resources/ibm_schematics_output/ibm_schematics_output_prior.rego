package ibmcloud.resources.prior.ibm_schematics_output
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_output"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_schematics_output").resources[_]
}
output_json = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "output_json", null) |
        res := resources_map[_]
        true
     }
}
workspace_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "workspace_id", null) |
        res := resources_map[_]
        true
     }
}
template_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_id", null) |
        res := resources_map[_]
        true
     }
}

