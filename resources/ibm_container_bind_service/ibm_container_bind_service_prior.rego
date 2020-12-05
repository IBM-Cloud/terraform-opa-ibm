package ibmcloud.resources.prior.ibm_container_bind_service
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_bind_service"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_bind_service").resources[_]
}
namespace_id = ret {
    ret := {res.address: object.get(res.attributes, "namespace_id", null) |
        res := resources_map[_]
        true
     }
}
cluster_name_id = ret {
    ret := {res.address: object.get(res.attributes, "cluster_name_id", null) |
        res := resources_map[_]
        true
     }
}
service_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "service_instance_id", null) |
        res := resources_map[_]
        true
     }
}
service_instance_name = ret {
    ret := {res.address: object.get(res.attributes, "service_instance_name", null) |
        res := resources_map[_]
        true
     }
}

