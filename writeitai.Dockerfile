FROM python:3.12-slim

# Install uv.
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Copy the application into the container.
COPY README.md /app/README.md
COPY pyproject.toml /app/pyproject.toml
COPY uv.lock /app/uv.lock

# Install the application dependencies.
WORKDIR /app
RUN uv sync --frozen --no-cache

COPY ./src /app/src