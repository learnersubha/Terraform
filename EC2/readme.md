You can use terraform on local or virtual machines both.

For local you need to install virtual Studio Code first ## want to install then click on the link https://code.visualstudio.com/download

Then you need to install terrafor. click on the link and install terraform in your system --> https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

After installing terraform open vs-code an open a terminal within vs-code and run terraform init command for initialization.

Now you need to install providers. you can install any provider linke aws, azure, gcp etc. Here I required AWS so, install aws provider

terraform { required_providers { aws = { source = "hashicorp/aws" version = "5.91.0" } } }

After provider installation again run the terra form init command

and then create required files for EC2 instance.

