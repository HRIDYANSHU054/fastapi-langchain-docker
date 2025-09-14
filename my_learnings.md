# My Learnings Journal

As the heading goes , here are the things I have learned during this venture. You would find things related to docker, fastapi and langchain.

------------------------------------------------------------------------

## 📌 Project Info

-   **Project Name:**\
-   **Date Started:**\
-   **Tech Stack:** Docker \| FastAPI \| LangChain \| Others...

------------------------------------------------------------------------

## 🚧 Problems Faced

- **Problem 1**  
  - **Description: Docker interprets Hridyanshu1 as a registry hostname, not as your Docker Hub username.
That’s why it tries to reach https://Hridyanshu1/v2/... (and fails, because Hridyanshu1 is not a real domain).**  
  - **Error Log:**  
    ```bash
    docker push Hridyanshu1/deploy-ai-agent:latest
    The push refers to repository [Hridyanshu1/deploy-ai-agent]
    31b0d2470ce1: Waiting
    2a0c4d22c1d6: Waiting
    8c141999d083: Waiting
    396b1da7636e: Waiting
    7b1ad37e982c: Waiting
    failed to do request: Head "https://Hridyanshu1/v2/deploy-ai-agent/blobs/sha256:042c6ecad5f63dc06ed126807042b53727b0b830bb61808becad5e4493946c34": dialing Hridyanshu1:443 container via direct connection because static system has no HTTPS proxy: connecting to Hridyanshu1:443: dial tcp: lookup Hridyanshu1: no such host
    ```
  - **Final Fix / Workaround:**  
    Always use **lowercase names** for Docker images and usernames while using Docker commands.
-   Problem 2:
    -   Description:\
    -   Steps I tried:\
    -   Final Fix / Workaround:

------------------------------------------------------------------------

## 📖 Syntax / Snippets

### Docker

\`\`\`bash \# Example command docker build -t myimage . \`\`\`

### FastAPI

\`\`\`python from fastapi import FastAPI

app = FastAPI()

@app.get("/") def hello(): return {"msg": "Hello World"} \`\`\`

### LangChain

\`\`\`python from langchain.prompts import PromptTemplate

template = PromptTemplate.from_template("Translate {text} to French.")
print(template.format(text="Hello")) \`\`\`

------------------------------------------------------------------------

## 📝 Notes & Key Takeaways

-   Note 1\
-   Note 2\
-   Note 3

------------------------------------------------------------------------

## ✅ Checklist

-   [ ] Set up environment\
-   [ ] Write Dockerfile\
-   [ ] Build image\
-   [ ] Run container\
-   [ ] Deploy

------------------------------------------------------------------------

## 📂 Resources / Links

-   [Docker Docs](https://docs.docker.com/)\
-   [FastAPI Docs](https://fastapi.tiangolo.com/)\
-   [LangChain Docs](https://python.langchain.com/)

------------------------------------------------------------------------

## 📊 Tables (for tracking)

  Feature/Task      Status           Notes
  ----------------- ---------------- ----------------------
  Dockerfile Done   ✅ Completed     Image builds fine
  API Endpoint      🚧 In-Progress   Need to test
  LangChain Flow    ⏳ Pending       Setup prompt library

------------------------------------------------------------------------

## 💡 Ideas for Improvement

-   Idea 1\
-   Idea 2\
-   Idea 3

------------------------------------------------------------------------

End of journal entry.



make sure ki watch mode me chalao after doign the develop watch in compose run the compose up using this command otherwise watching would not haopen
docker compose up -w --build 