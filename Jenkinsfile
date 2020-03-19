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
               sh 'docker tag docker_chatapp moneshs/docker_chatapp:latest'
               sh 'docker push moneshs/docker_chatapp'
           }
        }
      }
      stage('Test') {
            steps {
             sshagent (credentials: ['ubuntu']){
             sh ''' #! /bin/bash 
             ssh ubuntu@13.127.75.186 kubectl rollout restart deployment chatapp-deployment -n default
             '''
            }
        }
    }
      
   }
 }
