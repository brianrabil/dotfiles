# dotfiles
# This Makefile is used to build and manage the your_app_name application.
# It provides several tasks to set up the environment, run the application, run tests, clean up generated files, and install dependencies.

# Default task
.PHONY: default
default: help

# Help task
.PHONY: help
help:
	@echo "Available tasks:"
	@echo "  make deps          - Install dependencies and set up the environment"
	@echo "  make run           - Build the project"
	@echo "  make clean         - Clean up generated files"

# Set up the environment
.PHONY: deps
deps:
	@echo "Installing dependencies..."

# Build the project
.PHONY: build
run:
	@echo "Building the project..."
	. ./src/main.sh	
