def label = "mypod-${UUID.randomUUID().toString()}"

podTemplate(label: label, containers: [
  containerTemplate(name: 'docker', image: 'docker', ttyEnabled: true, command: 'cat')
  ],
  volumes: [
  hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
  ]) {

  node(label) {
    try {
        container('docker'){
            stage('Checkout') {
                checkout scm
            }
            stage('Build & Push Docker image') {
                container('docker') {
                    echo '==============================Build Docker Image======================================='
                    sh "docker build -t ${env.JOB_NAME}:${GIT_COMMIT} ."
                    echo '==============================Push Docker Image======================================='
                    docker.withRegistry("https://docker.io") {
                        docker.image("${env.JOB_NAME}:${GIT_COMMIT}").push()
                    }
                }
            }
        }        
    } catch (e) {
        throw e
    }
  }
}