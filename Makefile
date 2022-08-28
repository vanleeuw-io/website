init-subtrees:
	git remote add -f adityatelange/hugo-PaperMod https://github.com/adityatelange/hugo-PaperMod
	git subtree add --prefix themes/PaperMod adityatelange/hugo-PaperMod master

pull-paper-mod:
	git fetch adityatelange/hugo-PaperMod master
	git subtree pull --prefix=themes/PaperMod adityatelange/hugo-PaperMod master

generate:
	docker build . -t vanleeuw.io/website
	docker run --rm -v $(shell pwd):/src vanleeuw.io/website:latest hugo