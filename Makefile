stop:
	docker stop logsapp
run:
	docker run -d -p 80:4200 -v logs:/app/data --rm --name logsapp logsapp
run-dev:
	docker run -d -p 80:4200 -v "absolute-path-to-root:/app" -v /app/node_modules  -v logs:/app/data --rm --name logsapp logsapp
