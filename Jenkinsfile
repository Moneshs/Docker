pipeline {
   agent any 
   
   stages {
      stage ('Build'){
        steps {
          sh ''' #! /bin/bash
            cd /var/lib/jenkins/workspace/docker/
            docker build -t chatapp .
            '''
            }
       }
     }
    } 
    
