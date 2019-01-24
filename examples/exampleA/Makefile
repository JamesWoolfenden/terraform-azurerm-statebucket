#Makefile

.PHONY: all

all: init plan build


lock:
	@$(TERRAFORM) apply -target module.statebucket.aws_dynamodb_table.dynamodb-state-lock -auto-approve


first: init terraform/init lock
	@$(TERRAFORM) apply -target module.statebucket.aws_s3_bucket.statebucket -auto-approve
	@$(TERRAFORM) apply -target module.statebucket.local_file.remote_state -lock=false -auto-approve
	@$(TERRAFORM) init -force-copy
