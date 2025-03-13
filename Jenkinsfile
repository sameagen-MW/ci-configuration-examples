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
        runMATLABCommand 'pwd(), addpath(pwd()), savepath'
        runMATLABCommand 'getDefaultOtelPlugins()'
        runMATLABBuild(tasks: "fail")
        runMATLABTests()

        // As an alternative to runMATLABTests, you can use runMATLABCommand to execute a MATLAB script, function, or statement.
        // runMATLABCommand "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
      }
    }
  }
}
