package ibmcloud.resources.computed.ibm_appid_cloud_directory_user
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_cloud_directory_user"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_cloud_directory_user").resources[_]
}
display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}
user_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_id", null) |
        res := resources_map[_]
        true
     }
}
subject = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subject", null) |
        res := resources_map[_]
        true
     }
}
meta = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "meta", null) |
        res := resources_map[_]
        true
     }
}

