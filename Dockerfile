FROM python:3-slim
RUN mkdir /app && echo '<h1>Hello World!</h1>' > /app/index.html
WORKDIR /app
EXPOSE 8000
ENTRYPOINT [ "python3", "-m", "http.server", "8000" ]
