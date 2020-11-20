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
           sshagent(['sshec2']) {
            sh "scp -o StrictHostKeyChecking=no pod.yml ec2-user@18.220.49.155:/tmp/"
            sh "ssh ec2-user@18.220.49.155 kubectl create -f /tmp/pod.yml"
                }  
                    
                }
    }
  }


}
