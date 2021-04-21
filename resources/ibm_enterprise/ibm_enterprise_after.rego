package ibmcloud.resources.after.ibm_enterprise
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprise"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_enterprise").resources[_]
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
source_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_account_id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
primary_contact_iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "primary_contact_iam_id", null) |
        res := resources_map[_]
        true
     }
}

