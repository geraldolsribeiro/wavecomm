.PHONY: all html css img

all: html css img 

html:
	xfce4-terminal -x pug --watch *.pug --out docs/ --pretty

css:
	xfce4-terminal -x npx tailwindcss -i ./css/style.css -o ./docs/css/style.css --watch

img:
	cp img/* docs/img/

init:
	npm install
