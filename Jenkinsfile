pipeline {
   agent any 
   
   stages {
      stage ('Build'){
        steps {
          sh ''' #! /bin/bash
            cd /var/lib/jenkins/workspace/docker/
            sudo docker rmi chatapp
            sudo docker build -t chatapp .
            #docker login --username=moneshs -p Gomathi@15
            #docker tag chatapp moneshs/chatapp:${BUILD_ID}
            #docker push moneshs/chatapp
            sudo docker-compose up -d
            '''
            }
       }
     }
    } 
    
