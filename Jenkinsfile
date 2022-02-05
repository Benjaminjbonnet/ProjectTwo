pipeline {
    agent any
  //triggers {pollSCM('* * * * *')}
  stages {
    stage('Checkout') {
      steps {
        // Get some code from a GitHub repository
        git branch: "main", url: 'https://github.com/Benjaminjbonnet/ProjectTwo.git'
      }
    }
        stage('Build') {
      steps {
        sh 'chmod a+x mvnw'
        sh './mvnw clean package -DskipTests=true'
      }

          post {
        always {
          archiveArtifacts 'target/*.jar'
        }
          }
        }
        stage('DockerBuild') {
      steps {
        sh 'docker build -t benjaminjbonnet/project-two:latest .'
      }
        }
         stage('DockerRun') {
      steps {
        sh 'docker run -p 6060:6060 benjaminjbonnet/project-two'
      }
        }
  }
}