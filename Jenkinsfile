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
        stage('') {
          steps {
            mail(subject: 'STARTED: Job \'${env.JOB_NAME} [${env.BUILD_NUMBER}]\'', body: '""<p>STARTED: Job \'${env.JOB_NAME} [${env.BUILD_NUMBER}]\':</p>           <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>""', bcc: '[[$class: \'DevelopersRecipientProvider\']]', from: 'jr.panozo@gmail.com', replyTo: 'jr.panozo@gmail.com', to: 'jr.panozo@gmail.com')
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