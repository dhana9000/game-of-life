pipeline
{
    agent { label 'DOC' }
    stages
    {
        stage('SCM')
        {
            steps
            {
                git 'https://github.com/dhana9000/game-of-life.git'
            }
        }
        stage('Image Build')
        {
            steps
            {
                sh 'docker image build -t game-of-life:0.1 .'
            }
        }
        stage('Docker Hub login')
        {
            steps
            {
                sh 'docker login --username=dhana9000 --password=lucky@123'
            }
        }
        stage('Push image to docker hub')
        {
            steps
            {
                sh 'docker image tag game-of-life:0.1 dhana9000/game-of-life:0.1'
                sh 'docker push dhana9000/game-of-life:0.1'
            }
        }
    }
}
