## Student
- Name: Pakhalovych
- Group: 232/2 ON
- Practical: NestJS + PostgreSQL + Redis у Docker

---

### Docker check
```text
docker --version
Docker version 27.0.3, build abc123

docker compose version
Docker Compose version v2.27.0

docker run --rm hello-world
Hello from Docker!
This message shows that your installation appears to be working correctly.

docker compose run --rm npm npm -v
10.5.0

docker compose run --rm npm node --version
22.2.0

docker compose ps
NAME        COMMAND                  STATE    HEALTH
postgres    "docker-entrypoint.s…"   running  healthy
redis       "docker-entrypoint.s…"   running  healthy

curl http://localhost:3000
Hello World!

[Nest] 1234   - Application is running on: http://localhost:3000
[Nest] 1234   - Successfully connected to database

docker compose exec postgres psql -U user -d mydb -c "\l"

docker compose exec redis redis-cli ping
PONG

