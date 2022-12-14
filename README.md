 #Docker Terraform policy

Copyright © 2022 Shayan Ghani shayanghani1384@gmail.com

Applying Terraform policies to some docker containers.

### How to use
**prerequirements** :
-  Terraform
-  Python
- Venv

**Step1 : Clone the repository and open the directory.**
```
$ git clone https://github.com/Shayan-Ghani/terraform-policy-with-docker.git
$ cd terraform-policy-with-docker
```

**Step2 : Initialize terraform provider**

```
$ terraform init
```
**Step3 : Generate a suitable plan output for Tf2**
```shell
$ terraform plan -out="./terrform.tfplan"
```
**Step4: Create venv and Install the requirements.txt**
```
$ python3 -m venv venv
$ source venv/bin/activate
$ pip install -U pip
$ pip install -r ./requirements.txt
```
**Last step : Run the test script**
```
python3 pac_tests.py
```
Find out more about [Tf2 project ](https://tf2project.io/)
