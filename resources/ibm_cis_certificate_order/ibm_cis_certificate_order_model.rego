package ibmcloud.resources.model.ibm_cis_certificate_order
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_certificate_order"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_certificate_order").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cis_certificate_order", "managed").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
certificate_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_id", null) |
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
hosts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hosts", null) |
        res := resources_map[_]
        true
     }
}

