package ibmcloud.resources.state.data.ibm_iam_user_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_user_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_user_profile", "data").resources[_]
}
firstname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "firstname", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
phonenumber = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "phonenumber", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_id", null) |
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
email = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "email", null) |
        res := resources_map[_]
        true
     }
}
altphonenumber = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "altphonenumber", null) |
        res := resources_map[_]
        true
     }
}
allowed_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}
lastname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lastname", null) |
        res := resources_map[_]
        true
     }
}
