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
      sh 'sudo scp -r target/hello-world-war-1.0.0.warvwali@172.31.35.211:/opt/tomcat/webapps'
      sh 'sudo sh /opt/tomcat/bin/startup.sh'
    }
   } 
  }
}
