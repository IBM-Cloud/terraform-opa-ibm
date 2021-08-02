package ibmcloud.resources.model.ibm_container_vpc_cluster
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_vpc_cluster"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_container_vpc_cluster").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_container_vpc_cluster", "managed").resources[_]
}
vpc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_id", null) |
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
force_delete_storage = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_delete_storage", null) |
        res := resources_map[_]
        true
     }
}
master_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "master_url", null) |
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
albs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "albs", null) |
        res := resources_map[_]
        true
     }
}
ingress_secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_secret", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
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
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
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
pod_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pod_subnet", null) |
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
ingress_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_hostname", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
service_subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_subnet", null) |
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
taints = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "taints", null) |
        res := resources_map[_]
        true
     }
}
master_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "master_status", null) |
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
worker_labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "worker_labels", null) |
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
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
private_service_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_service_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
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
public_service_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_service_endpoint_url", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}

