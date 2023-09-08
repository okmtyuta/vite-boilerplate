RUNNER := pnpm

pre-push: format lint build collect

lint:
	$(RUNNER) lint

format:
	$(RUNNER) format

build:
	$(RUNNER) build

auto-push:
	git add .
	git commit -m "auto-commit"
	git push origin HEAD

