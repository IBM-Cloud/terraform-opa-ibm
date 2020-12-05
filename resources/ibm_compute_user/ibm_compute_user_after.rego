package ibmcloud.resources.after.ibm_compute_user
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_user"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_compute_user").resources[_]
}
username = ret {
    ret := {res.address: object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
first_name = ret {
    ret := {res.address: object.get(res.attributes, "first_name", null) |
        res := resources_map[_]
        true
     }
}
country = ret {
    ret := {res.address: object.get(res.attributes, "country", null) |
        res := resources_map[_]
        true
     }
}
user_status = ret {
    ret := {res.address: object.get(res.attributes, "user_status", null) |
        res := resources_map[_]
        true
     }
}
password = ret {
    ret := {res.address: object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}
permissions = ret {
    ret := {res.address: object.get(res.attributes, "permissions", null) |
        res := resources_map[_]
        true
     }
}
api_key = ret {
    ret := {res.address: object.get(res.attributes, "api_key", null) |
        res := resources_map[_]
        true
     }
}
address2 = ret {
    ret := {res.address: object.get(res.attributes, "address2", null) |
        res := resources_map[_]
        true
     }
}
last_name = ret {
    ret := {res.address: object.get(res.attributes, "last_name", null) |
        res := resources_map[_]
        true
     }
}
email = ret {
    ret := {res.address: object.get(res.attributes, "email", null) |
        res := resources_map[_]
        true
     }
}
company_name = ret {
    ret := {res.address: object.get(res.attributes, "company_name", null) |
        res := resources_map[_]
        true
     }
}
address1 = ret {
    ret := {res.address: object.get(res.attributes, "address1", null) |
        res := resources_map[_]
        true
     }
}
city = ret {
    ret := {res.address: object.get(res.attributes, "city", null) |
        res := resources_map[_]
        true
     }
}
state_ = ret {
    ret := {res.address: object.get(res.attributes, "state_", null) |
        res := resources_map[_]
        true
     }
}
timezone = ret {
    ret := {res.address: object.get(res.attributes, "timezone", null) |
        res := resources_map[_]
        true
     }
}
has_api_key = ret {
    ret := {res.address: object.get(res.attributes, "has_api_key", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

