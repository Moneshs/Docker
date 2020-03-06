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
             docker-compose up --build -d
            '''
            }
       }
   stage('Deploy Image to dockerhub') {
      steps{
         sh ''' #! /bin/bash 
         docker.withRegistry( '', registryCredential ) {
          docker tag registry+ ":${BUILD_NUMBER}"
         '''
        }
      }
    }    
}
}
