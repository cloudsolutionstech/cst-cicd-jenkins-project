pipelineJob('First-Maven-Project') {
    description("Pipeline job created via DSL on ${new Date()}. It builds a small Maven project hosted on GitHub.")

    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/cloudsolutionstech/cst-cicd-jenkins-project.git')
                        branch('main')
                    }
                }
            }
        }
    }

    triggers {
        scm('H/5 * * * *')
    }

    stages {
        stage('Build') {
            steps {
                maven {
                    goals('clean package')
                    pom('maven-sample/single-module/pom.xml')
                }
            }
            post {
                success {
                    archiveArtifacts '**/*.jar'
                }
            }
        }
    }
}

