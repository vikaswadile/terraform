pipeline {
    agent any
    tools {
  terraform 'terraform'
}
    stages {
  stage('checkout') {
    steps {
      git branch: 'main', url: 'https://github.com/vikaswadile/terraform.git'
    }
  }

  stage('init') {
    steps {
      sh 'terraform init'
    }
  }

  stage('plan') {
    steps {
      sh "terraform plan -var access_key=${params.access_key} -var secret_key=${params.secret_key} -var ami_details=${params.ami} -var instance_type=${params.aws_instance} -var instance_name=${params.instance_name}"
    }
  }

//   stage('apply') {
//     steps {
//       // One or more steps need to be included within the steps block.
//     }
//   }

}

}
