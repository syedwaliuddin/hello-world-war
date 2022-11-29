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
}
