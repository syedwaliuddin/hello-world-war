pipeline {
  agent none
  stages {
   stage ('my build') {
     agent { label 'buildbuild' }
     steps {
     sh 'mvn package'
     sh 'ls'
    }
   }
   stage ('my deploy') {
     agent { label 'deploydeploy' }
      steps {
       sh 'sudo scp -r /root/hello-world-war/target/hello-world-war-1.0.0.war root@172.31.12.223:/opt/tomcat/webapps'
       sh 'sudo sh /opt/tomcat/bin/startup.sh'
    }
   } 
  }
}
