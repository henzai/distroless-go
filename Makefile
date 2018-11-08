build:
	docker build -t distroless-go .

run:
	docker run -it --rm distroless-go
