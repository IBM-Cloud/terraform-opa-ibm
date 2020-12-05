package ibmcloud.resources.computed.ibm_lbaas_health_monitor
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas_health_monitor"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_lbaas_health_monitor").resources[_]
}

