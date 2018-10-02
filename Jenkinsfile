pipeline {
  agent any
  stages {
    stage('Descargar') {
      steps {
        git(url: 'https://github.com/jcmt2k/personas.git', branch: 'master')
      }
    }
    stage('Preparar') {
      steps {
        sh 'python --version'
      }
    }
    stage('Probar') {
      steps {
        echo 'Pruebas unitarias OK'
        echo 'Pruebas de aceptación OK'
      }
    }
    stage('Entregar') {
      steps {
        echo 'Entregar software OK'
        echo 'Entregar documentación OK'
      }
    }
    stage('Prueba Final') {
      steps {
        echo 'Prueba de aceptacion OK'
      }
    }
  }
}