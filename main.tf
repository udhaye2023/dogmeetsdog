terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  access_key = "AKIA3UVFNIXRQUAPHJ3U"
  secret_key = "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"
}

resource "aws_instance" "dogmeetsdog_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  user_data = <<EOF
#!/bin/bash
echo "Copying the SSH Key to the server"
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDIZR+sCsTLjj2YMzvr1jomZAit4SXcgFxQfTnPK/d1jPfeOMu8KIQs3Vdg7eYnl5E8o0Q6j4EAfn5c8hDDQoovqwNLzyiBRPlAXIbY9oVenvRPA2hEJ17ObBlekPzvye1FBq35u/Be5cPZwZ19xPUuCHMT3UAXLKjQWlAlBuovrcBIjFsgiejWM6mA2xCP4uo9PGt4mNJRPHHMsDFyoiQdnh3aSUbwqotut2x8FPgpbi/W9ccodDbvzCaUcyCAT2HKNtrcFDaacFWSKolLNIt366KWI1t5kuzs1P9wF5hJR92TyeVSyYUUKBTEvpBfdIBlWa1sLUl0KP82FuNbcN5ZC/N8PCAIJVrEUr5VP4ozesA+kAJiI12UcZKaHQWRgKcI9BiXyGDCcU4RAa1aTJGQnSm+TEZxl5qX5GhKvZe5TOxPYBw0EzLVB7b7NQiX2jxGGH3MReaJSobu/30xknja2UGWEr5eXqdGNeWMJuft1DirpQzDgseOkoQIywIQgn9vpLKAltNhw3uHl6IaWGH2YFFzQl2QaZgXJSERsNAdAt3tte8YFdGOmnrz2bcZvc9ahryPnugyJmBYGeO9YMla4FSyOWZxLqNFnCcLv34RyVXHZqui4BMsVM8qku41vnhiXYNJ0vchT5cfM2zBc1lad4d9PKd83HgGb7x0a/zRnw== udaypalla@udays-Air.lan >> /home/ubuntu/.ssh/authorized_keys
EOF

  tags = {
    Name = "DMD App server"
  }
}