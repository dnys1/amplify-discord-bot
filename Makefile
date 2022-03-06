.PHONY: schema
schema:
	curl -L -o lib/github/schema.graphql https://docs.github.com/public/schema.docs.graphql
	dart run build_runner build --delete-conflicting-outputs