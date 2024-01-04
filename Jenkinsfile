#!groovy
@Library('lib_cicd@develop-datalake') _


pipelineDock ([
        RUN_COMPILE: true,
        RUN_CI: true,
        PATH_DEPLOY: 'metabase-eks',
        ARCHITECTURE: 'Serverless',
        DEPLOY: true,
        LANGUAGE: 'python3',
        SAM: false,
        CHANNEL:"jenkins",
        CLOUDFORMATION: false,
        KUBERNETES: true,
        TEMPLATEFILE: "cloudformation.yml",
        RUN_TESTES_DEV: false,
        RUN_TESTES_PRD: false,
        RUN_TESTES_HML: false,
        CLUSTER: 'kubernetes-cluster',
        NAMESPACE: 'metabase-eks',
        MANUAL_TEST: false,
        ACCOUNT_TYPE: "datalake"
])