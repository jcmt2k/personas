pipeline {
  agent any
  stages {
    stage('Descargar') {
      parallel {
        stage('Descargar') {
          steps {
            git(url: 'https://github.com/jcmt2k/personas.git', branch: 'master')
          }
        }
        stage('Notificar') {
          steps {
            emailext(subject: '$DEFAULT_SUBJECT', attachLog: true, body: '$DEFAULT_CONTENT  Changes:  ${CHANGES, showPaths=true, format="%a: %r %p \\n--\\"%m\\"", pathFormat="\\n\\t- %p"}', replyTo: '$DEFAULT_REPLYTO', from: 'jr.panozo@gmail.com')
          }
        }
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
        sh './jenkins/scripts/pruebas-aceptacion.sh'
      }
    }
    stage('Entregar') {
      steps {
        sh './jenkins/scripts/entregar-software.sh'
        sh './jenkins/scripts/entregar-doc.sh'
      }
    }
    stage('Prueba Final') {
      steps {
        sh './jenkins/scripts/prueba-final.sh'
      }
    }
  }
}