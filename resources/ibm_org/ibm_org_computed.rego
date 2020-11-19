package ibmcloud.resources.computed.ibm_org
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_org"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_org").resources[_]
}
org_quota_definition_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_quota_definition_guid", null) |
        res := resources_map[_]
        true
     }
}

