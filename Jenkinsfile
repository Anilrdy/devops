pipeline {
  agent any
  stages {
    stage('build docker images')
    {
           steps{
             sh "docker build -t appchenewimage:v1 ."
           }
    }
  }


}
