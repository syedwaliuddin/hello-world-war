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
   agent { node { label 'deploy' } }
    stage ('my deploy') {
     steps {
      sh sudo 'scp -r /ayesha/hello-world-war/target/hello-world-war-1.0.0.war walideploy@172.31.2.252:/opt/tomcat/webapps'
      sh sudo 'sh /opt/tomcat/bin/startup.sh'
     }
    }
} 
