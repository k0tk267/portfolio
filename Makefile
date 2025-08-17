help:
	@echo "Available commands:"
	@echo "  make dev     - Start development server"
	@echo "  make build   - Build the project"
	@echo "  make deploy  - Deploy to Cloudflare Pages"
	@echo "  make install - Install dependencies"
	@echo "  make clean   - Clean node_modules and build files"


dev:
	npm run dev

build:
	npm run build

deploy:
	npm run deploy

install:
	npm install

clean:
	rm -rf node_modules
	rm -rf dist
	rm -rf .next
	rm -rf build

update:
	npm update

lint:
	npm run lint

format:
	npm run format

test:
	npm run test

all: install build deploy

.PHONY: help dev build deploy install clean update lint format test all
