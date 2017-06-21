pipeline {
  agent {
      label 'x86_64'
  }
  stages {
    stage('Clone something') {
      steps {
         git 'https://github.com/brmzkw/conf.git'
      }
    }
    stage('Show where we are') {
      steps {
        sh 'env'
        sh 'ls -al'
      }
    }
  }
}

