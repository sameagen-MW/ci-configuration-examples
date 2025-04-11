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
        runMATLABCommand 'matlab.addons.toolbox.installToolbox("/toolbox/otel-matlab.mltbx")'
        runMATLABCommand 'addpath(pwd()); savepath'
        runMATLABBuild(tasks: "test fail", startupOptions: "-parallel")
      }
    }
  }
}
