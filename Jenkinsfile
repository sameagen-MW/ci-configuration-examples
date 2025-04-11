pipeline {
  environment {
    MLM_LICENSE_TOKEN = credentials('mytoken')
  }
  
  agent any

  tools {
    matlab 'R2025b'
  }
  
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABCommand 'rehash toolboxcache'
        runMATLABBuild(tasks: "test fail", buildOptions: "-parallel")
      }
    }
  }
}
