package ibmcloud.resources.planned.ibm_enterprise_account_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprise_account_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_enterprise_account_group").resources[_]
}
parent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parent", null) |
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

