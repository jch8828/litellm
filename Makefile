aks_litellm_image = humana-ai-coe-eng-docker-virtual.jfrog.io/genai-litellm-dev:1.42.26-amd64-${rc}
build-docker-aks:
	# @cd ui/litellm-dashboard; ./build_ui.sh; cd ../..
	@DOCKER_DEFAULT_PLATFORM="linux/amd64" docker build -f ./Dockerfile.database -t ${aks_litellm_image} .
	@docker push ${aks_litellm_image}


build-docker-local:
	# @cd ui/litellm-dashboard; ./build_ui.sh; cd ../..
	@docker build -f ./Dockerfile.database -t humana-ai-coe-eng-docker-virtual.jfrog.io/genai-litellm-dev:1.42.26-arm-rc1 .