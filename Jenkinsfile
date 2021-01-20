pipeline {
  agent {
    docker {
      image 'maven:3.6.3-openjdk-11'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B package --file pom.xml'
      }
    }

    stage('Upload') {
      steps {
        archiveArtifacts 'target/JMusicBot-*.jar'
      }
    }

    stage('target Clean') {
      steps {
        sh 'mvn -B clean --file pom.xml'
      }
    }

    stage('Notice') {
      steps {
        discordSend(webhookURL: 'https://discordapp.com/api/webhooks/772325029634899968/_x-m33bF38HrhbLoagfwZwmumy7Nqm1tqdd7i4X90ZCQKiX4714RBjPCAB1Vc_sJSxq5', description: 'Jenkins Pipeline Build', link: 'env.BUILD_URL', successful: true, title: 'JOB_NAME')
      }
    }

  }
}