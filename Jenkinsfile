pipeline {
  agent {
      label 'x86_64'
  }
  stages {
    stage('Clone something') {
      steps {
        sh 'pwd'
        sh 'tree -a'
        git 'https://github.com/brmzkw/conf.git'
      }
    }
    stage('Show where we are') {
      steps {
        sh 'env'
        sh 'pwd'
        sh 'tree -a'
      }
    }
  }
}

