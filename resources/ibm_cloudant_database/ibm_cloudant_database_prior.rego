package ibmcloud.resources.prior.ibm_cloudant_database
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloudant_database"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cloudant_database").resources[_]
}
instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_crn", null) |
        res := resources_map[_]
        true
     }
}
db = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "db", null) |
        res := resources_map[_]
        true
     }
}

