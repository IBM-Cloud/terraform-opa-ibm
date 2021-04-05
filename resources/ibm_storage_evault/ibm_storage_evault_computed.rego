package ibmcloud.resources.computed.ibm_storage_evault
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_storage_evault"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_storage_evault").resources[_]
}
password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}
service_resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_resource_name", null) |
        res := resources_map[_]
        true
     }
}
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}

