pipeline {
  agent { node { label 'leased_debian12' } }

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
