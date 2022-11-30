pipeline {
  stages {
    agent {label 'build'}
      stage ('my build') { 
        steps {
          sh 'mvn package'
          sh 'scp -r target/hello-world-war-1.0.0.war deploy@172.31.33.31:/opt/tomcat/webapps'
        }
      }
      agent {label 'deploy'}
       stage ('my deploy') {
        steps {
         sh 'sh /opt/tomcat/bin/shutdown.sh'
         sh 'sh /opt/tomcat/bin/startup.sh'
        }
       } 
  }
}
