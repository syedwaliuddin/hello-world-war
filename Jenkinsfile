pipeline {
  agent { node { label 'build' } }
   stages {
    stage ('my build') {
     steps {
      sh 'mvn package'
      sh 'scp -R target/hello-world-war-1.0.0.war wali@172.31.39.139:/opt/tomcat/webapps'
     }
    } 
     stage ('my deploy') {
      agent { node { label 'deploy' } }
       steps {
        sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
        sh 'sudo sh /opt/tomcat/bin/startup.sh'
       }
     } 
   }
}
