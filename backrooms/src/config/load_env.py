from dotenv import load_dotenv
import os

# Load .env file only if it exists (safe for production too)
load_dotenv()


def get_env(key: str, default: str | None = None, required: bool = False) -> str | None:
    """
    Fetch an environment variable.

    Args:
        key: Name of the environment variable.
        default: Default value if not found.
        required: If True and variable is missing, raise an error.

    Returns:
        str | None: The environment variable value.
    """
    value = os.getenv(key, default)
    if required and value is None:
        raise EnvironmentError(f"Missing required environment variable: {key}")
    return value


# Application configuration
PROJECT_NAME = get_env("PROJECT_NAME", "backrooms")
PORT = get_env("PORT", 8000)
HOST = get_env("HOST", "0.0.0.0")


API_KEY = get_env("API_KEY", required=True)

# examples
# LMSTUDIO_MODEL_NAME = get_env("LMSTUDIO_MODEL_NAME", "default-model")
# ACTIVELOOP_TOKEN = get_env("ACTIVELOOP_TOKEN", required=True)
