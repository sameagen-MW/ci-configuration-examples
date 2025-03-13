pipeline {
  environment {
    MLM_LICENSE_TOKEN = credentials('mytoken')
    MW_MATLAB_BUILDTOOL_DEFAULT_PLUGINS_FCN_OVERRIDE = "getDefaultOtelPlugins"
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
        runMATLABBuild(tasks: "fail")
      }
    }
  }
}
