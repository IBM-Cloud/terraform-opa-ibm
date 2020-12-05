package ibmcloud.resources.planned.ibm_storage_evault
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_storage_evault"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_storage_evault").resources[_]
}
hardware_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "hardware_instance_id", null) |
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
datacenter = ret {
    ret := {res.address: object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
capacity = ret {
    ret := {res.address: object.get(res.attributes, "capacity", null) |
        res := resources_map[_]
        true
     }
}
virtual_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "virtual_instance_id", null) |
        res := resources_map[_]
        true
     }
}

