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
        def myTestContainer = docker.image('python')
        myTestContainer.pull()
        myTestContainer.inside{
          'sh 'pip install -r requirements-test.txt'
          sh 'sh run_test.sh'
        }
    }
}
