pipeline {
 agent { node { label 'deploy' } }
  stage ('my deploy') {
   step {
    sudo sh '  scp -r /ayesha/hello-world-war/target/hello-world-war-1.0.0.war walideploy@172.31.2.252:/opt/tomcat/webapps'
    sudo sh 'sh /opt/tomcat/bin/startup.sh'
   } 
  }
} 
