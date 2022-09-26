package ibmcloud.resources.model.ibm_cis_webhook
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_webhook"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_webhook").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cis_webhook", "managed").resources[_]
}
webhook_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "webhook_id", null) |
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
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
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
secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}

