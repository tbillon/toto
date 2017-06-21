pipeline {
  agent {
      label 'x86_64'
  }
  environment {
    SUBDIR = 'subdir'
  }
  stages {
    stage('Clone something') {
      steps {
        dir("${SUBDIR}") {
          git 'https://github.com/brmzkw/conf.git'
        }
      }
    }
    stage('Explore') {
      steps {
        parallel(
          'thread1': {
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
        sh 'tree'
        sh 'cat ${SUBDIR}/plop'
      }
    }
  }
}

