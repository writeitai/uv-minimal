# uv minimal template

This is a minimal template for a project that uses the `uv` package manager.

Note the `writeit.Dockerfile` 
- this is an example Dockerfile that could be used during [WriteIt.ai](https://writeit.ai/) setup

To run tests:
-  `uv run pytest`

To build docker image:
- `docker build -f writeitai.Dockerfile -t uv-minimal .`

To run tests in docker container:
- `docker run -it uv-minimal sh -c "uv run pytest"`
