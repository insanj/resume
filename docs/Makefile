serve:
	python -m webbrowser "http://localhost:4000"
	bundle exec jekyll serve --watch

build:
	bundle exec jekyll build

ghpages:
	bundle exec jekyll build --destination docs

setup-macos:
	brew install automake
	brew install libffi
	LDFLAGS="-L/usr/local/opt/libffi/lib" sudo bundle install

setup-linux:
	sudo apt install libffi-dev
	sudo gem inst ffi
	bundle install

clean:
	rm -r -f docs
	rm -r -f _site
	bundle exec jekyll clean