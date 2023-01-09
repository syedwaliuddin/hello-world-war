pipeline {
    agent none
    stages {
        stage ('my build') {
            agent { label 'build' }
            steps {
                sh 'sudo mvn package'
                sh 'scp -r target/hello-world-war-1.0.0.war deploy@172.31.46.138:/opt/tomcat/webapps'
            }
        }
        stage ('my deploy') {
            agent { label 'deploy' }
            steps {
                sh 'sudo sh /opt/tomcat/bin/shutdown.sh'
                sh 'sudo sh /opt/tomcat/bin/startup.sh'
            }
        }
    }
}
