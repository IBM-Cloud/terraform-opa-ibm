package ibmcloud.resources.computed.ibm_container_bind_service
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_bind_service"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_bind_service").resources[_]
}
service_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_id", null) |
        res := resources_map[_]
        true
     }
}
service_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_name", null) |
        res := resources_map[_]
        true
     }
}

