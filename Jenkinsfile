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
           sh "scp -o StrictHostKeyChecking=no pod.yml ec2-user@18.222.232.50:/home/ec2-user/"
           sh "ssh ec2-user@18.222.232.50 kubectl create -f /home/ec2-user/pod.yml"
               }  
               }
    }
  }


}
