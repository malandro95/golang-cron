# golang-cron
This docker base image lets you build a *golang* binary and schedule its execution in a *cron*-like style when the container is run

# usage
```
# ONBUILD triggers will compile your golang application if stored in your project's root directory
FROM rodrigodiez/golang-cron
```

```bash
docker build -t <your_image_name> .
# executes your binary each 10 seconds
docker run -e "SCHEDULE=*/10 * * * * *" <your_image_name>
# SCHEDULE defaults to * * * * * *, executing your binary every second
docker run <your_image_name>
# arguments are supported
docker run <your_image_name> <argument_1>...<argument_n>
```

# see
- [rk/go-cron](https://github.com/rk/go-cron)
- [odise/go-cron](https://github.com/odise/go-cron)
- [webwurst/docker-go-cron](https://github.com/webwurst/docker-go-cron)
