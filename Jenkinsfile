pipeline {
  environment {
    MLM_LICENSE_TOKEN = credentials('mytoken')
  }
  agent {
    docker { image 'matlab-image' }
  }
  
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABCommand 'ver'
        runMATLABBuild(tasks: "fail")
        runMATLABTests()

        // As an alternative to runMATLABTests, you can use runMATLABCommand to execute a MATLAB script, function, or statement.
        // runMATLABCommand "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
      }
    }
  }
}
