pipeline {
   environment {
    registry = "moneshs/docker_chatapp"
    registryCredential = 'dockerhub'
  }
   
   agent any
   
   stages {
      stage ('Build'){
        steps {
          sh ''' #! /bin/bash
             cd /var/lib/jenkins/workspace/docker/
            docker rm -f chatapp
            #docker rm -f db
            #docker-compose down -v
            docker rmi docker_chatapp
            #docker build -t chatapp .
            #docker login --username=moneshs -p Gomathi@15
            #docker tag chatapp moneshs/chatapp:${BUILD_ID}
            #docker push moneshs/chatapp
            dockerImage= docker-compose up --build -d
            '''
            }
       }
   stage('Deploy Image to dockerhub') {
      steps{
           docker.withRegistry([ credentialsId: "registryCredential", url: "" ]) {
            sh 'docker push registry:latest'
           }
        }
      }
    }    
}
