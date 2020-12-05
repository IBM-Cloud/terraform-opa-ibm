package ibmcloud.resources.planned.ibm_certificate_manager_import
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_certificate_manager_import"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_certificate_manager_import").resources[_]
}
certificate_manager_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "certificate_manager_instance_id", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {res.address: object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
data = ret {
    ret := {res.address: object.get(res.attributes, "data", null) |
        res := resources_map[_]
        true
     }
}

