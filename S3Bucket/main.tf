terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "CloudQucikLabs"

		workspaces {
			name = "AWSbackup"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}

#
