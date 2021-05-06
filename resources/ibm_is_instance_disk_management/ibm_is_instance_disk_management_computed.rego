package ibmcloud.resources.computed.ibm_is_instance_disk_management
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_disk_management"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_disk_management").resources[_]
}

