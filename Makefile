TENANT_ID	?=

export

.PHONY: init
init:
	@docker run -it --rm -e TENANT_ID -v "$(shell pwd):/repo" -w /repo bash:5 utils/initialize
