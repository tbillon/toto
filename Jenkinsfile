pipeline {
  agent {
      label 'x86_64'
  }
  environment {
    SUBDIR = 'subdir'
  }
  stages {
    stage('Setup') {
      steps {
        deleteDir
        dir("${SUBDIR}") {
          git 'https://github.com/brmzkw/conf.git'
        }
        sh 'tree -a'
      }
    }
    stage('Explore') {
      steps {
        parallel(
          'thread1': {
            directory = sh(
              script: 'mktemp -d'
              returnStdout: true
            )
            dir("${SUBDIR}") {
              sh 'pwd'
              sh 'echo plip >>plop'
            }
          },
          'thread2': {
            dir("${SUBDIR}") {
              sh 'pwd'
              sh 'echo plup >>plop'
            }
          }
        )
      }
    }
    stage('Check stuff') {
      steps {
        sh 'env'
        sh 'pwd'
        sh 'tree -a'
        dir("${SUBDIR}") {
          sh 'cat plop'
        }
      }
    }
  }
}

