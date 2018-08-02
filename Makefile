serve:
	python -m webbrowser "http://localhost:4000"
	bundle exec jekyll serve

build:
	bundle exec jekyll build

setup:
	sudo apt install libffi-dev
	sudo gem inst ffi
	bundle install
