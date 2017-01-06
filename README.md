## Initialed based on [jeesite](https://github.com/thinkgem/jeesite)

## How to run

```
# you can config variable in system environment or in 'mvn.cmd' file
$ set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m
$ mvn jetty:run
```

## How to compile

```
$ mvn compile
```

## How to edit with VSCode and debug with Eclipse

```
# you can config variable in system environment or in 'mvnDebug.cmd' file
$ set MAVEN_DEBUG_OPTS=%MAVEN_DEBUG_OPTS% -Xms256m -Xmx1024m -XX:PermSize=128M -XX:MaxPermSize=256M -agentlib:jdwp=transport=dt_socket,server=y,address=8000,suspend=n
$ mvnDebug jetty:run
# then create new a remote debug config in Eclipse preference with same port
```