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
        sh './jenkins/scripts/prepara.sh'
      }
    }
    stage('Probar') {
      steps {
        sh './jenkins/scripts/pruebas-unitarias.sh'
        echo 'Pruebas unitarias OK'
        sh './jenkins/scripts/pruebas-aceptacion.sh'
        echo 'Pruebas de aceptación OK'
      }
    }
    stage('Entregar') {
      steps {
        sh './jenkins/scripts/entregar-software.sh'
        echo 'Entregar software OK'
        sh './jenkins/scripts/entregar-doc.sh'
        echo 'Entregar documentación OK'
      }
    }
    stage('Prueba Final') {
      steps {
        sh './jenkins/scripts/prueba-final.sh'
        echo 'Prueba de aceptacion OK'
      }
    }
  }
}