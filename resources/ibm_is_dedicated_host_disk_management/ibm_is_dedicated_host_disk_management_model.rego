package ibmcloud.resources.model.ibm_is_dedicated_host_disk_management
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_disk_management"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_dedicated_host_disk_management").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_dedicated_host_disk_management", "managed").resources[_]
}
dedicated_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host", null) |
        res := resources_map[_]
        true
     }
}
disks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disks", null) |
        res := resources_map[_]
        true
     }
}

