package ibmcloud.resources.planned.ibm_compute_user
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_user"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_compute_user").resources[_]
}
first_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "first_name", null) |
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
country = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "country", null) |
        res := resources_map[_]
        true
     }
}
last_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_name", null) |
        res := resources_map[_]
        true
     }
}
timezone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timezone", null) |
        res := resources_map[_]
        true
     }
}
user_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_status", null) |
        res := resources_map[_]
        true
     }
}
has_api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "has_api_key", null) |
        res := resources_map[_]
        true
     }
}
company_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "company_name", null) |
        res := resources_map[_]
        true
     }
}
city = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "city", null) |
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
password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}
permissions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "permissions", null) |
        res := resources_map[_]
        true
     }
}
api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_key", null) |
        res := resources_map[_]
        true
     }
}
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
address1 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address1", null) |
        res := resources_map[_]
        true
     }
}
address2 = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address2", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}

