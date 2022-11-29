pipeline {
 agent { node { label 'build' } }
  stages {
   stage ('my build') {
    steps {
     sh 'mvn package'
     sh 'ls'
    }
   }
  }
  stage ('my deploy') {
   steps {
    sudo sh 'scp -r /ayesha/hello-world-war/target/hello-world-war-1.0.0.war walideploy@172.31.2.252:/opt/tomcat/webapps'
    sudo sh 'sh /opt/tomcat/bin/startup.sh'
   }
  } 
}
