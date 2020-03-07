pipeline {
   environment {
    registry = "moneshs/docker_chatapp"
    registryCredential = 'dockerhub'
  }
   
   agent any
   
   stages {
      stage ('Build'){
        steps {
           sshagent (credentials: ['ubuntu']){
            sh ''' #! /bin/bash
             cd ${WORKSPACE}
             rm -rf ${WORKSPACE}/.git
             ssh ubuntu@13.233.195.55 sudo rm -rf /home/ubuntu/docker1/
             scp -r /home/ubuntu/jenkins/workspace/docker1/ ubuntu@13.233.195.55:~/
            #docker rm -f chatapp
            #docker rm -f db
            #docker-compose down -v
            #docker rmi docker_chatapp
            #docker build -t docker_chatapp:${BUILD_TAG} .
            #docker login --username=moneshs -p Gomathi@15
            #docker tag chatapp moneshs/chatapp:${BUILD_ID}
            #docker push moneshs/chatapp
            #docker-compose up -d
            '''
            }
       }
      }  
   stage('Deploy Image to dockerhub') {
      steps{
            withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
               sh 'docker tag docker_chatapp moneshs/docker_chatapp:${BUILD_TAG}'
               sh 'docker push moneshs/docker_chatapp'
           }
        }
      }
    }    
}
