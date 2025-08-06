pipeline {
  agent any

  tools {
    matlab 'davidb_maci_24b'
  }
  
  stages {
    stage('Run MATLAB Tests') {
      steps {
        runMATLABBuild(tasks: "test")
      }
    }
  }
}
