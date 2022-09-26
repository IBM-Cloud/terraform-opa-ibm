package ibmcloud.resources.computed.ibm_cis_webhook
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_webhook"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_webhook").resources[_]
}
webhook_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "webhook_id", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}

