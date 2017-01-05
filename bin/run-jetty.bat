@echo off
rem /**
rem  * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
title %cd%
echo.
echo [��Ϣ] ʹ��Jetty�������й��̡�
echo.
rem pause
rem echo.

cd %~dp0
cd..

set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m
rem set MAVEN_OPTS=-Xms256m -Xmx512m -XX:PermSize=128m -XX:MaxPermSize=256m
rem set MAVEN_DEBUG_OPTS=%MAVEN_DEBUG_OPTS% -Xms256m -Xmx1024m -XX:PermSize=128M -XX:MaxPermSize=256M -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8088,server=y,suspend=n
rem set MAVEN_DEBUG_OPTS=%MAVEN_DEBUG_OPTS% -Xms256m -Xmx1024m -XX:PermSize=128M -XX:MaxPermSize=256M -agentlib:jdwp=transport=dt_socket,server=y,address=8000,suspend=n
call mvn jetty:run

cd bin
pause
