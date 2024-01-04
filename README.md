# metabase-eks
Repositório para criação do cluster e configuração do metabase em EKS
├── Kubernetes
│   ├── datalake
│   │   ├── configmap.yaml
│   │   ├── deployment.yaml
│   │   ├── es.yaml
│   │   └── hpa.yaml
│   │   └── service.yaml
│   ├── datalake-hml
│   │   ├── configmap.yaml
│   │   ├── deployment.yaml
│   │   ├── es.yaml
│   │   └── hpa.yaml
│   │   └── service.yaml
└── cloudformation
│   ├── output
│   ├── parameters   
│   │   ├── datalake-hml.json
│   │   ├── datalake.json
├── Dockerfile
├── Jenkinsfile
└── README.md
└── requirements.txt
└── sonar-project.properties


Ferramentas utilizadas na arquitetura da solução:

- Router53
- Elastic Container Registry
- CloudFormation
- Secrets Manager
- IAM
- CloudWatch
- docker desktop