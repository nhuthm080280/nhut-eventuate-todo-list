FROM java:openjdk-8u91-jdk
CMD java ${JAVA_OPTS} -jar todo-service.jar
COPY multi-module/todo-service/build/libs/todo-service.jar .