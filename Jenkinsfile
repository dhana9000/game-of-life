pipeline
{
    agent { label 'MAVEN' }
    stages
    {
        stage('SCM')
        {
            steps
            {
                git 'https://github.com/dhana9000/game-of-life.git'
            }
        }
        stage('Package')
        {
            steps
            {
                sh 'mvn package'
            }
        }
    }
}
