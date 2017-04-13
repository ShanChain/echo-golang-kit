PACKAGES = $(shell go list ./app/...)

test:
	@echo "test each package"
	go test -cover ./app/...

coverage-data:
	@echo "-----collect-cover-data-----"
	@echo "mode: set" > coverage-all.out
	$(foreach pkg, $(PACKAGES),\
		echo "test package:"$(pkg);\
		go test -v -coverprofile=coverage.out $(pkg) || exit $$?;\
		if [ -f coverage.out ]; then\
			tail -n +2 coverage.out >> coverage-all.out;\
		fi\
		;)

coverage-html:
	@echo "-----create coverage html-----"
	go tool cover -html=coverage-all.out -o coverage.html

coverage-func:
	@echo "-----coverage------"
	go tool cover -func=coverage-all.out


