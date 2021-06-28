package ibmcloud.resources.after.ibm_container_vpc_cluster
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_cluster"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_vpc_cluster").resources[_]
}
kms_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kms_config", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
        res := resources_map[_]
        true
     }
}
service_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_subnet", null) |
        res := resources_map[_]
        true
     }
}
worker_labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_labels", null) |
        res := resources_map[_]
        true
     }
}
wait_till = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_till", null) |
        res := resources_map[_]
        true
     }
}
kube_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kube_version", null) |
        res := resources_map[_]
        true
     }
}
update_all_workers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_all_workers", null) |
        res := resources_map[_]
        true
     }
}
worker_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_count", null) |
        res := resources_map[_]
        true
     }
}
entitlement = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entitlement", null) |
        res := resources_map[_]
        true
     }
}
cos_instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cos_instance_crn", null) |
        res := resources_map[_]
        true
     }
}
vpc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_id", null) |
        res := resources_map[_]
        true
     }
}
force_delete_storage = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_delete_storage", null) |
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
pod_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pod_subnet", null) |
        res := resources_map[_]
        true
     }
}
wait_for_worker_update = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_for_worker_update", null) |
        res := resources_map[_]
        true
     }
}
retry_patch_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "retry_patch_version", null) |
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
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
        res := resources_map[_]
        true
     }
}
patch_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "patch_version", null) |
        res := resources_map[_]
        true
     }
}
disable_public_service_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disable_public_service_endpoint", null) |
        res := resources_map[_]
        true
     }
}

