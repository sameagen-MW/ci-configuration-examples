pipeline {
  environment {
    MLM_LICENSE_TOKEN = credentials('mytoken')
  }
  
  agent any

  tools {
    matlab 'R2024a'
  }
  
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABBuild(tasks: "test fail", startupOptions: "-parallel")
      }
    }
  }
}
