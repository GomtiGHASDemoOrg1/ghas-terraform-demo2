resource "google_storage_bucket" "terragoat_website" {
  name          = "terragot-${var.environment}"
  force_destroy = true
}
# Moving this around to test dismissing Code Scanning alert https://github.com/octodemo/felickz-advanced-security-terraform/security/code-scanning/432
# Moving this around to test dismissing Code Scanning alert https://github.com/octodemo/felickz-advanced-security-terraform/security/code-scanning/432
# Moving this around to test dismissing Code Scanning alert https://github.com/octodemo/felickz-advanced-security-terraform/security/code-scanning/432
# Moving this around to test dismissing Code Scanning alert https://github.com/octodemo/felickz-advanced-security-terraform/security/code-scanning/432
resource "google_storage_bucket_iam_binding" "allow_public_read" {
  bucket  = google_storage_bucket.terragoat_website.id
  members =  ["allUsers2"]
  role    = "roles/storage.objectViewer"
}
