resource "ibm_iam_access_group" "accgrp" {
  name = "test1"
}

resource "ibm_iam_access_group_members" "accgroupmem" {
  access_group_id = ibm_iam_access_group.accgrp.id
  ibm_ids         = ["user2" ] # can be a list
}

resource "ibm_iam_access_group_policy" "iam_policy_2" {
  access_group_id = ibm_iam_access_group.accgrp.id
  roles  = ["Administrator"]

  resources {
    service = "kms"     
  }
}

resource "ibm_iam_user_policy" "iam_policy_1" {
  ibm_id = "user1"
  roles  = ["Viewer", "Editor", "Administrator"]

  resources {
    service = "cloud-object-storage"
  }
}
