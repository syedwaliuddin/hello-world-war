pipeline {
  agent { node { label 'deploy' } }
  stages {
   stage ('my build') {
    steps {
     sh 'sudo scp -r target/hello-world-war-1.0.0.war wali@172.31.35.211:/opt/tomcat/webapps'
     sh 'sudo sh /opt/tomcat/bin/startup.sh'
    }
   }
  }
}
