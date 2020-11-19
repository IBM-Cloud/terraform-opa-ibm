package ibmcloud.resources.state.data.ibm_certificate_manager_certificate
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_certificate_manager_certificate"
}

resources_map[attr]{
    attr := state.get_resources("ibm_certificate_manager_certificate", "data").resources[_]
}
certificate_details = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_details", null) |
        res := resources_map[_]
        true
     }
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
