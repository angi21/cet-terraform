resource "google_kms_key_ring" "my_key_ring" {
  project  = "nokia-tcs-enablement"
  name     = "my-key-ring"
  location = "us-central1"
}


resource "google_kms_crypto_key" "my_crypto_key" {
  name     = "my-crypto-key"
  key_ring = google_kms_key_ring.my_key_ring.self_link
}
