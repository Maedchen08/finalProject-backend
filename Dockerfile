# FROM adoptopenjdk/openjdk11:alpine-slim
#
# ENV DATA_DIR=/reimbursement-backend
# # ENV DB_HOST=172.17.0.1
#
# RUN addgroup -S spring && adduser -S spring -G spring
# RUN mkdir -p $DATA_DIR
# RUN chown spring $DATA_DIR
#
# USER spring:spring
# ARG JAR_FILE=./target/reimbursement-backend-0.0.1-SNAPSHOT.jar
# COPY ${JAR_FILE} app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]



FROM adoptopenjdk/openjdk11:alpine-slim
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
# ENV DATA_DIR=/inventory-api
# ENV DB_HOST=172.17.0.1

ARG JAR_FILE=./target/online-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]