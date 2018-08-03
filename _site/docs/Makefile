serve:
	python -m webbrowser "http://localhost:4000"
	bundle exec jekyll serve

build:
	bundle exec jekyll build --destination docs

setup:
	sudo apt install libffi-dev
	sudo gem inst ffi
	bundle install

clean:
	rm -r -f docs
	rm -r -f _site
	bundle exec jekyll clean