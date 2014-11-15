[c3h3 / g0v-cvg-web](https://registry.hub.docker.com/u/c3h3/g0v-cvg-web/)
==================

# How to use this images

### First Step: Download and Extract pgdata 

```
git clone https://github.com/c3h3/g0v-cvg-pgdata.git && cd g0v-cvg-pgdata && tar xfzv 11a90d6e0eca89450654e0788f938b586f488484.tar.gz
```
- After that, you will get pgdata dir. 
- Assume pgdata's absolute path is "your_pgdata"
 

### Second Step: RUN postgres with pgdata

```
docker run --name pgdb -v your_pgdata:/var/lib/postgresql/data postgres:9.3
```

If you want to use pgadmin connect with your db, you could also forwarding the port out ... with command ...

```
docker run --name pgdb -p 5432:5432 -v your_pgdata:/var/lib/postgresql/data postgres:9.3
```

- "your_pgdata" is pgdata's absolute path in previous step.


### Third Step: RUN web linked with pgdb

```
docker run --name g0v-cvg-web --link pgdb:postgres -p port_on_host:8000 -d c3h3/g0v-cvg-web
```
- "port_on_host" is the port forwarding out to your host, which you could find your web on http://localhost:port_on_host

