image=garukun/godep-example
project=example

build:
	@echo "Resolving external dependencies..."
	$(eval build_image := $(shell date | md5))
	@docker build --build-arg GO_PROJECT=$(project) -t $(build_image) .
	@echo "Compiling..."
	@docker run --rm -v `pwd`/_out:/out $(build_image) -o /out/$(project)
	@echo "Dockerizing..."
	@docker build -t $(image) -f _out/Dockerfile _out
	@docker rmi $(build_image)
	@rm _out/$(project)
	@echo "Done!"

publish:
	@docker push $(image)
