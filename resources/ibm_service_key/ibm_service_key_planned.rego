package ibmcloud.resources.planned.ibm_service_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_service_key"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_service_key").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
service_instance_guid = ret {
    ret := {res.address: object.get(res.attributes, "service_instance_guid", null) |
        res := resources_map[_]
        true
     }
}
parameters = ret {
    ret := {res.address: object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

