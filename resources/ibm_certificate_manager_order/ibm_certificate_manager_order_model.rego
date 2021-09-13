package ibmcloud.resources.model.ibm_certificate_manager_order
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_certificate_manager_order"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_certificate_manager_order").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_certificate_manager_order", "managed").resources[_]
}
rotate_keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rotate_keys", null) |
        res := resources_map[_]
        true
     }
}
renew_certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "renew_certificate", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
issuer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "issuer", null) |
        res := resources_map[_]
        true
     }
}
expires_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expires_on", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
auto_renew_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auto_renew_enabled", null) |
        res := resources_map[_]
        true
     }
}
begins_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "begins_on", null) |
        res := resources_map[_]
        true
     }
}
issuance_info = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "issuance_info", null) |
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
domain_validation_method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_validation_method", null) |
        res := resources_map[_]
        true
     }
}
dns_provider_instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_provider_instance_crn", null) |
        res := resources_map[_]
        true
     }
}
key_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_algorithm", null) |
        res := resources_map[_]
        true
     }
}
algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "algorithm", null) |
        res := resources_map[_]
        true
     }
}
imported = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "imported", null) |
        res := resources_map[_]
        true
     }
}
has_previous = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "has_previous", null) |
        res := resources_map[_]
        true
     }
}
certificate_manager_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_manager_instance_id", null) |
        res := resources_map[_]
        true
     }
}
domains = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domains", null) |
        res := resources_map[_]
        true
     }
}

