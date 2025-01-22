get-web-cn:
	git clone https://github.com/missing-semester-cn/missing-semester-cn.github.io.git

get-web:
	git clone https://github.com/missing-semester/missing-semester.git

build-web-cn: get-web-cn
	bundle exec jekyll serve -w

build-web: get-web
	bundle exec jekyll serve -w

build-docker: get-web
	docker-compose up --build

