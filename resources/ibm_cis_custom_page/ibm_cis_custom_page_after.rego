package ibmcloud.resources.after.ibm_cis_custom_page
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_custom_page"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_custom_page").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
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
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
page_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "page_id", null) |
        res := resources_map[_]
        true
     }
}

