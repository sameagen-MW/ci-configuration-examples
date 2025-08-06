pipeline {
  agent { node { label 'leased_debian12' } }

  environment {
    MLM_LICENSE_TOKEN = credentials('token')
  }

  tools {
    matlab 'MPM_install'
  }
  
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABBuild(tasks: "test")
      }
    }
  }
}
