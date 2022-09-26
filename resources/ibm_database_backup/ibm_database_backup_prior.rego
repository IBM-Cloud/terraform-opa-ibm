package ibmcloud.resources.prior.ibm_database_backup
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_backup"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_database_backup").resources[_]
}
backup_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_id", null) |
        res := resources_map[_]
        true
     }
}

