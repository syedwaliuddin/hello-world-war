pipeline {
  agent { node { label 'build' } }
  stages {
   stage ('my build') {
    steps {
     sh 'mvn package'
     sh 'ls'
    }
   }
   stage ('my deploy') {
    steps {
      sh 'scp -r target/hello-world-war-1.0.0.war wali@172.31.43.98:/opt/tomcat/webapps'
      sh 'sh /opt/tomcat/bin/startup.sh'
    }
   } 
  }
}
