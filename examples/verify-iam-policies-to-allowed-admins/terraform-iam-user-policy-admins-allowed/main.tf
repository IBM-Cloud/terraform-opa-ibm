
resource "ibm_iam_user_policy" "iam_policy_1" {
  ibm_id = "user1"
  roles  = ["Viewer", "Editor", "Administrator"]

  resources {
    service = "iam"
  }
}


resource "ibm_iam_user_policy" "iam_policy_3" {
  ibm_id = "user2"
  roles  = ["Viewer", "Editor"]

  resources {
    service = "cloud-object-storage"
  }
}
