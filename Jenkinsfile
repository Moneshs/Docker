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
             ssh ubuntu@13.235.45.137 sudo rm -rf /home/ubuntu/docker/
             scp -r ${WORKSPACE} ubuntu@13.235.45.137:~/
            #docker rm -f chatapp
            #docker rm -f db
            #docker-compose down -v
            #docker rmi docker_chatapp
            #docker build -t docker_chatapp:${BUILD_TAG} .
            #docker login --username=moneshs -p Gomathi@15
            #docker tag chatapp moneshs/chatapp:${BUILD_ID}
            #docker push moneshs/chatapp
            #ssh ubuntu@13.235.45.137 cd docker && pwd
            #docker-compose up -d
            '''
            }
       }
      }  
       stage ('Build1'){
        steps {
            sshagent (credentials: ['ubuntu']){
           script{
               
              sh '''#! /bin/bash
              ssh -tt ubuntu@13.235.45.137 && pwd
              #cd docker
              #sudo docker-compose down  
              #sudo docker rmi docker_chatapp 
              #sudo docker-compose up --build -d
              '''
           }
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
