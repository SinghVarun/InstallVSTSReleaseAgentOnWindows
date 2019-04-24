# Install AzurePipeline ReleaseAgent On Windows container.
Install AzurePipeline Release Agent on Windows container using docker
To set up AzurePipeline Release Agent agent on Windows Docker containerm first setup three environment variable present in docker-compose.yml, post cloning the repo.
Three environment variable are listed below
1. VSTS_ACCOUNT - AzureDevOps Organization.
2. VSTS_TOKEN - (PAT TOKEN should have access level =  Agent Pools (read, manage), as mentioned [here](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/v2-windows?view=azure-devops#permissions))
3. VSTS_POOL - Agent Pool name present in the above organization, against which the new agents needs to be associated with.

Once you set up the environment variable, you should execute below command from the directory where you have cloned this repo.
#### docker-compose up -d

If you want to scale up the number of vsts/azurepipeline agent to 4. 
#### docker-compose up -d --scale vstsagent=4
