pipeline {
  agent any
  stages {
    stage('build docker images')
    {
           steps{
             sh "docker build -t anilrdy208/appchenewimage:v1 ."
           }
    }

    stage('push docker images to dockerhub')
    {
      steps{
        sh "docker push anilrdy208/appchenewimage:v1"
           }
    }
    stage ('deploy to kops')
    {
           steps{
           sshagent(['ec2_user']) {
           sh "scp -o StrictHostKeyChecking=no pod.yml anil@3.138.111.153:/home/anil/"
           sh "ssh anil@3.138.111.153 kubectl create -f /home/anil/pod.yml"
               }  
               }
    }
  }


}
