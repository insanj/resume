serve:
	python3 -m webbrowser "http://localhost:4000"
	bundle exec jekyll serve --watch

build:
	bundle exec jekyll build

ghpages:
	bundle exec jekyll build --destination docs

setup-macos:
	brew install automake
	brew install libffi
	LDFLAGS="-L/usr/local/opt/libffi/lib" sudo bundle install
# cd $(xcode-select -p)/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/include/ruby-2.6.0 && ln -s universal-darwin20 universal-darwin19

setup-linux:
	sudo apt install libffi-dev
	sudo gem inst ffi
	bundle install

clean:
	rm -r -f docs
	rm -r -f _site
	bundle exec jekyll clean