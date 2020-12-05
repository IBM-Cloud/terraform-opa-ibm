package ibmcloud.resources.prior.ibm_schematics_workspace
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_workspace"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_schematics_workspace").resources[_]
}
workspace_id = ret {
    ret := {res.address: object.get(res.attributes, "workspace_id", null) |
        res := resources_map[_]
        true
     }
}

