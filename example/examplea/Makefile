#Makefile
ifdef OS
   BLAT = $(powershell  -noprofile rm .\.terraform\ -force -recurse)
   RM = $(powershell  –noprofile rm .\.terraform\ -force -recurse)
else
   ifeq ($(shell uname), Linux)
      RM  = rm .terraform/modules/ -fr
      BLAT= rm .terraform/ -fr
   endif
endif

.PHONY: all

all: init plan build

init:
	$(RM)
	terraform init -reconfigure -upgrade

plan: init
	terraform plan -refresh=true

build: init
	terraform apply -auto-approve

check: init
	terraform plan -detailed-exitcode

destroy: init
	terraform destroy -force

docs:
	terraform-docs md . > README.md

valid:
	terraform fmt
	checkov -d . --external-checks-dir ../../checkov
first: init
	terraform apply -target module.statebucket.local_file.remote_state -lock=false -auto-approve
	terraform init -force-copy
