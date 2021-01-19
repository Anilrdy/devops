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
           sshagent(['udeploy']) {
           sh "scp -o StrictHostKeyChecking=no pod.yml ec2-user@172.31.44.21:/home/ec2-user/"
           script {
             try{
               sh "ssh ec2-user@172.31.44.21 kubectl create -f /home/ec2-user/pod.yml"
                }
             catch(error){
                         sh "ssh ec2-user@172.31.44.21 kubectl apply -f /home/ec2-user/pod.yml"
                         }
                  }
           
               }  
               }
    }
  }


}
