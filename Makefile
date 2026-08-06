pages:
	git add -A && git commit -m Updates --allow-empty && git push
	@echo "live: https://jlb0170.github.io/"

deploy:
	scp index.html prod:~/hub-index.html
	ssh prod 'sudo cp ~/hub-index.html /var/www/html/index.html'
	@echo "live: http://54.176.99.150/"

makes:
	egrep '^\w' Makefile
