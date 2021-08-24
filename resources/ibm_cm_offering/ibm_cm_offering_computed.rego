package ibmcloud.resources.computed.ibm_cm_offering
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_offering"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cm_offering").resources[_]
}
offering_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_id", null) |
        res := resources_map[_]
        true
     }
}
public_publish_approved = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_publish_approved", null) |
        res := resources_map[_]
        true
     }
}
public_original_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_original_crn", null) |
        res := resources_map[_]
        true
     }
}
portal_approval_record = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "portal_approval_record", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
short_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "short_description", null) |
        res := resources_map[_]
        true
     }
}
permit_request_ibm_public_publish = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "permit_request_ibm_public_publish", null) |
        res := resources_map[_]
        true
     }
}
publish_public_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "publish_public_crn", null) |
        res := resources_map[_]
        true
     }
}
hidden = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hidden", null) |
        res := resources_map[_]
        true
     }
}
repo_info = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "repo_info", null) |
        res := resources_map[_]
        true
     }
}
offering_support_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_support_url", null) |
        res := resources_map[_]
        true
     }
}
portal_ui_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "portal_ui_url", null) |
        res := resources_map[_]
        true
     }
}
catalog_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_name", null) |
        res := resources_map[_]
        true
     }
}
disclaimer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disclaimer", null) |
        res := resources_map[_]
        true
     }
}
long_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "long_description", null) |
        res := resources_map[_]
        true
     }
}
ibm_publish_approved = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_publish_approved", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
offering_icon_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_icon_url", null) |
        res := resources_map[_]
        true
     }
}
offering_docs_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_docs_url", null) |
        res := resources_map[_]
        true
     }
}

