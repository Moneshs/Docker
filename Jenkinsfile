pipeline {
   agent any 
   
   stages {
      stage ('Build'){
        steps {
        sh ''' #! /bin/bash
        cd ${WORKSPACE}
        docker build -t docker_chatapp:latest .
        '''
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
