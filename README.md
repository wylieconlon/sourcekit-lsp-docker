# Dockerfile for sourcekit-lsp

The image is published on Docker Hub as `wylieconlon/sourcekit-lsp`. If the image gets
out of date or has other bugs, please submit a pull request or issue and I will release
a new version.

## Usage

This image is intended to be used as a subprocess of your IDE, so it automatically runs the
LSP server over stdio. But because the LSP is running in a Docker container, it doesn't
automatically have access to your filesystem. You will most likely need to customize your
editor to provide a path within the Docker image, potentially using
[Docker volumes](https://docs.docker.com/storage/volumes/) like in this example:

```
export MY_DIRECTORY=/User/MyName/Documents/
docker run -i -v $MY_DIRECTORY:/mnt/MyName/ wylieconlon/sourcekit-lsp
```

## License

MIT License
