pipeline {
  agent { node { label 'build' } }
   stages {
    stage ('my build') {
     steps {
      sh 'echo ${BUILD_NUMBER}'
      sh 'sudo mvn deploy'
      sh 'pwd'  
     }
    } 
    stage ('my deploy') {
     agent { node { label 'deploy' } }
       steps {
        sh 'curl -u wali.uddin9@gmail.com:Wali@8792 -O https://syedwaliuddin.jfrog.io/artifactory/libs-release-local/com/efsavage/hello-world-war/${BUILD_NUMBER}/hello-world-war-${BUILD_NUMBER}.war
        sh 'sudo cp -R hello-world-war-${BUILD_NUMBER}.war /otp/tomcat/webapps'
        sh 'sh /opt/tomcat/bin/shutdown.sh'
        sh 'sh /opt/tomcat/bin/startup.sh'
       }
    } 
   }
}
