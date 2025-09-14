from fastapi import FastAPI

from config.load_env import PROJECT_NAME, PORT, HOST, API_KEY

app = FastAPI()


@app.get("/health-check")
def get_health():
    return {"success": True, "status": "OK", "message": "backrooms running hot"}


@app.get("/")
def get_root():
    return {"success": True, "status": "OK", "message": "namaste backrooms"}
