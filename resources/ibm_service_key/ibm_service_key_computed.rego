package ibmcloud.resources.computed.ibm_service_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_service_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_service_key").resources[_]
}
credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials", null) |
        res := resources_map[_]
        true
     }
}

