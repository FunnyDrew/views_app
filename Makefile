start:
	bin/dev

setup: install db-prepare

install:
	bin/setup

db-prepare:
	bin/rails db:reset
	bin/rails db:fixtures:load

check: test lint

test:
	bin/rails test

lint:
	bundle exec rubocop
	bundle exec slim-lint app/views/

lint-fix:
	bundle exec rubocop -A

.PHONY: test