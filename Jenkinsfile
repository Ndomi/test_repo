pipeline {
  agent {
    dockerfile true
  }

  stages {
    stage('Preparation'){
      checkout scm
      sh "git rev-parse --short HEAD > .git/commit-id"
      commit_id = readFile('.git/commit-id'.trim())
    }
    stage('test'){
      'sh run_test.sh'
    }

  }
}
