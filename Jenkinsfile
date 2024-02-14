pipeline {
      agent any
      stages {
            stage('Init') {
                  steps {
                        echo 'Welcome to this Jenkins docker series'
                        echo 'We are Commencing the Testing'
                  }
            }
            stage('Build') {
                  steps {
                        echo 'Constructing a Sample Maven Project'
                  }
            }
            stage('Deploy') {
                  steps {
                        echo "Deploy to Staging Area"
                  }
            }
            stage('Deploy Production') {
                  steps {
                        echo "Deploy to Production Area"
                  }
            }
      }
}
