pipeline {
   agent any
   
   stages {
      stage ('Build'){
        steps {
          sh ''' #! /bin/bash
             cd /jenkins/workspace/docker1/
            #docker rmi chatapp
            docker build -t chatapp .
            #docker login --username=moneshs -p Gomathi@15
            #docker tag chatapp moneshs/chatapp:${BUILD_ID}
            #docker push moneshs/chatapp
             docker-compose up -d
            '''
            }
       }
     }
    } 
    
