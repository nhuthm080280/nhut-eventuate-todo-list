FROM ghcr.io/graalvm/graalvm-ce:21.0.0

CMD java ${JAVA_OPTS} -jar todo-service.jar
COPY multi-module/todo-service/build/libs/todo-service.jar .