package ibmcloud.resources.computed.ibm_pi_volume_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_volume_attach"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_volume_attach").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}

