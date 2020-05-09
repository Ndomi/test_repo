node {
  def commit_id 
    stage ('Check'){
      dockerfile { 
            filename 'Dockerfile.test-jenkins'
            args '-u root'
      }
    }
    stage('Preparation'){
      checkout scm
      sh "git rev-parse --short HEAD > .git/commit-id"
      commit_id = readFile('.git/commit-id'.trim())
    }
  
    stage('test'){
        def myTestContainer = docker.image('python:2.7.5')
        myTestContainer.inside{
          'sh 'pip install -r requirements-test.txt'
          'sh run_test.sh'
        }
    }
}
