package ibmcloud.resources.state.data.ibm_certificate_manager_certificates
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_certificate_manager_certificates"
}

resources_map[attr]{
    attr := state.get_resources("ibm_certificate_manager_certificates", "data").resources[_]
}
certificate_manager_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_manager_instance_id", null) |
        res := resources_map[_]
        true
     }
}
certificates = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificates", null) |
        res := resources_map[_]
        true
     }
}
