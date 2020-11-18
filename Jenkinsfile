pipeline {
  agent any
  stages {
    stage('build docker images')
    {
           steps{
             sh "docker build -t appchenewimage:v1 ."
           }
    }

    stage('push docker images to dockerhub')
    {
      steps{
        sh "docker push appchenewimage:v1"
           }



    }
  }


}
