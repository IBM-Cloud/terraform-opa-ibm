package ibmcloud.resources.prior.ibm_certificate_manager_certificate
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_certificate_manager_certificate"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_certificate_manager_certificate").resources[_]
}
certificate_manager_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_manager_instance_id", null) |
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

