pipeline {
   agent any 
   
   stages {
      stage ('Build'){
        steps {
          sh ''' #! /bin/bash
            cd ${workspace}/docker/
            docker build -t chatapp .
            '''
            }
       }
     }
    } 
    
