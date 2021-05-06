package ibmcloud.resources.after.ibm_is_instance_disk_management
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_disk_management"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_instance_disk_management").resources[_]
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
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

