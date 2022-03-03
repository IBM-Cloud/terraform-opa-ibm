package ibmcloud.resources.after.ibm_ssl_certificate
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_ssl_certificate"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_ssl_certificate").resources[_]
}
validity_months = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "validity_months", null) |
        res := resources_map[_]
        true
     }
}
ssl_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ssl_type", null) |
        res := resources_map[_]
        true
     }
}
certificate_signing_request = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate_signing_request", null) |
        res := resources_map[_]
        true
     }
}
billing_contact_same_as_technical_flag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_contact_same_as_technical_flag", null) |
        res := resources_map[_]
        true
     }
}
billing_address_same_as_organization_flag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_address_same_as_organization_flag", null) |
        res := resources_map[_]
        true
     }
}
server_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_type", null) |
        res := resources_map[_]
        true
     }
}
organization_information = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "organization_information", null) |
        res := resources_map[_]
        true
     }
}
administrative_contact = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "administrative_contact", null) |
        res := resources_map[_]
        true
     }
}
order_approver_email_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "order_approver_email_address", null) |
        res := resources_map[_]
        true
     }
}
technical_contact_same_as_org_address_flag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "technical_contact_same_as_org_address_flag", null) |
        res := resources_map[_]
        true
     }
}
technical_contact = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "technical_contact", null) |
        res := resources_map[_]
        true
     }
}
server_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "server_count", null) |
        res := resources_map[_]
        true
     }
}
renewal_flag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "renewal_flag", null) |
        res := resources_map[_]
        true
     }
}
administrative_contact_same_as_technical_flag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "administrative_contact_same_as_technical_flag", null) |
        res := resources_map[_]
        true
     }
}
administrative_address_same_as_organization_flag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "administrative_address_same_as_organization_flag", null) |
        res := resources_map[_]
        true
     }
}
billing_contact = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_contact", null) |
        res := resources_map[_]
        true
     }
}

