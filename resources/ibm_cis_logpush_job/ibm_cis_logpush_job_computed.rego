package ibmcloud.resources.computed.ibm_cis_logpush_job
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_logpush_job"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_logpush_job").resources[_]
}
job_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_id", null) |
        res := resources_map[_]
        true
     }
}
destination_conf = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_conf", null) |
        res := resources_map[_]
        true
     }
}

