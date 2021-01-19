pipeline {
         agent any
         environment {
                  version= mytag() 
                     }
         stages {
                stage ("build docker image"){
                  steps {
                        sh "docker build . -t anilrdy208/tomcatlatest:${version}"
                        }  
                                            }
                stage ("push the docker file") {
                  steps {
                       withCredentials([string(credentialsId: 'Dockerhub', variable: 'dockerhub')]) {
                      sh "echo ${dockerhub} | docker login -u anilrdy208 --password-stdin"
                      sh "docker push anilrdy208/tomcatlatest:${version}"
                                                                                                    } 
                        }
                        }
                }  
         }
def mytag() {
      def tag= sh script: 'git rev-parse HEAD', returnStdout: true
      return tag 
            }
