package ibmcloud.resources.planned.ibm_hpcs_keystore
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs_keystore"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_hpcs_keystore").resources[_]
}
azure_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_location", null) |
        res := resources_map[_]
        true
     }
}
ibm_iam_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_iam_endpoint", null) |
        res := resources_map[_]
        true
     }
}
ibm_api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_api_key", null) |
        res := resources_map[_]
        true
     }
}
ibm_key_ring = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_key_ring", null) |
        res := resources_map[_]
        true
     }
}
azure_service_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_service_name", null) |
        res := resources_map[_]
        true
     }
}
azure_resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_resource_group", null) |
        res := resources_map[_]
        true
     }
}
ibm_api_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_api_endpoint", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
aws_region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "aws_region", null) |
        res := resources_map[_]
        true
     }
}
aws_access_key_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "aws_access_key_id", null) |
        res := resources_map[_]
        true
     }
}
ibm_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_instance_id", null) |
        res := resources_map[_]
        true
     }
}
vault = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vault", null) |
        res := resources_map[_]
        true
     }
}
azure_subscription_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_subscription_id", null) |
        res := resources_map[_]
        true
     }
}
aws_secret_access_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "aws_secret_access_key", null) |
        res := resources_map[_]
        true
     }
}
azure_service_principal_client_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_service_principal_client_id", null) |
        res := resources_map[_]
        true
     }
}
azure_environment = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_environment", null) |
        res := resources_map[_]
        true
     }
}
groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "groups", null) |
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
azure_service_principal_password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_service_principal_password", null) |
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
uko_vault = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uko_vault", null) |
        res := resources_map[_]
        true
     }
}
azure_tenant = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "azure_tenant", null) |
        res := resources_map[_]
        true
     }
}
ibm_variant = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_variant", null) |
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

