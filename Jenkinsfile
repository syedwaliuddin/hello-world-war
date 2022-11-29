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
 stages {
  agent { node { label 'deploy' } }
    
