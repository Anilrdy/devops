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
           sshagent(['87d9fa84-63d4-4633-a7a9-7a000bf3eba9']) {
            sh "sudo scp -o StrictHostKeyChecking=no pod.yml ec2-user@18.220.49.155:/home/ec2-user/"
            sh "ssh ec2-user@18.220.49.155 sudo kubectl create -f pod.yml"
                }  
                    
                }
    }
  }


}
