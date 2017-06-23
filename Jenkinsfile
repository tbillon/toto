pipeline {
  agent any

  stages {
    stage('Create test bootscript') {
      steps {
        json_message = sh(
          script: './request_json.sh ${BUILD_BRANCH} ${BUILD_NUMBER}',
          returnStdout: true
        )
        bootscript = input(
          message: '${}',
          parameters: [string(name: 'bootscript_id', description: 'ID of the created bootscript')]
        )
        echo 'received bootscript ID: ${bootscript}'
      }
    }
  }
}

