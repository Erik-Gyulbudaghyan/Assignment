pipelineJob('microservice-ci') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/your/repo.git')
                    }
                    branch('*/main')
                }
            }
            scriptPath('Jenkinsfile')
        }
    }
}
