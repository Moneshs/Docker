pipeline {
   agent any 
   
   stages {
      stage ('Build'){
        steps {
        sh ''' #! /bin/bash
        cd ${WORKSPACE}
        docker build -t docker_chatapp:latest .
        }
        }
        }
        }
