pipeline {
  environment {
    MLM_LICENSE_TOKEN = credentials('matlab-token')
  }
  agent {
    docker { image: 'matlab-image' }
  }
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABTests(
          sourceFolder: ['code']
        )

        // As an alternative to runMATLABTests, you can use runMATLABCommand to execute a MATLAB script, function, or statement.
        // runMATLABCommand "addpath('code'); results = runtests('IncludeSubfolders', true); assertSuccess(results);"
      }
    }
  }
}
