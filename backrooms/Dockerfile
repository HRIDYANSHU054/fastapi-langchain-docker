# Use Python 3.13 slim image
FROM python:3.13.7-slim-trixie

# Install uv (the package manager)
RUN pip install --no-cache-dir uv==0.8.17

# Set working directory inside the container
WORKDIR /app

# --- Dependency Installation Layer (cached if pyproject/lock don’t change) ---
# COPY local_folder/file container_folder/
COPY ./pyproject.toml ./uv.lock* ./
RUN uv venv && . .venv/bin/activate && uv sync --frozen

# --- Copy actual source code ---
COPY ./src ./src

# Expose the port your app runs on
EXPOSE 8000

# Now go into src and run the app
WORKDIR /app/src

# Run FastAPI with uvicorn inside uv
# CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
