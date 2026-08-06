pages:
	git add -A && git commit -m Updates --allow-empty && git push
	@echo "live: https://jlb0170.github.io/"

deploy:
	scp index.html prod:~/hub-index.html
	ssh prod 'sudo cp ~/hub-index.html /site/toys/index.html'
	@echo "live: http://54.176.99.150/toys/"

makes:
	egrep '^\w' Makefile
