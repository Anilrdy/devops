pipeline {
         agent any
         stages {
                stage ("build docker image"){
                  steps {
                        sh "docker build . -t anilrdy208/tomcatlatest:v1latest"
                        }  
                                            }
                stage ("push the docker file") {
                  steps {
                       withCredentials([string(credentialsId: 'Dockerhub', variable: 'dockerhub')]) {
                      sh "docker login -u anilrdy208 -p ${dockerhub}"
                      sh "docker push anilrdy208/tomcatlatest:v1latest"
                                                                                                    } 
                        }
                        }
                }  
         }
