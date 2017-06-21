pipeline {
  agent {
      label 'x86_64'
  }
  stages {
    stage('Clone something') {
      steps {
        sh 'pwd'
        sh 'ls -al'
        git 'https://github.com/brmzkw/conf.git'
      }
    }
    stage('Show where we are') {
      steps {
        sh 'env'
        sh 'pwd'
        sh 'ls -al *'
      }
    }
  }
}

