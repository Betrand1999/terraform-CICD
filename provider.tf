provider "google" {
  credentials = file("innate-agency-406505-5592097e6e9f.json")

  project = "main-nucleus-418523"
  region  = "us-east1" // Specify the region here
}

terraform {
  cloud {
    organization = "my-demo-organization-2"

    workspaces {
      name = "my-dev-workspace"
    }
  }
}
