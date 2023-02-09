
Deploying a Web Application to Azure App Service by benefiting from docker containerization using Azure DevOps Pipelines and benefiting from Terraspace as an IaC (infrastructure as code) for creating the Azure resources.   

Prerequisites

•	An Azure subscription

•	A web application codebase

•	An Azure DevOps organization and project

•	A Terraform installation

•	A Terraspace installation



- Creating of Azure Container Registry (ACR) with Terraspace.

    Terraspace is a framework that simplifies the IaC process by abstracting Terraform code into reusable modules.

    Go to ‘terraspace codes’ directory in your terminal and run the following command to create an ACR. 

    terraspace up  acr
    

- Azure DevOps

    After opening a project (CrizmasApp) in the organization, start creating a new pipeline. 
    

<img width="472" alt="image" src="https://user-images.githubusercontent.com/113396504/217716753-e08deef4-b3f1-4dc7-9078-1586a218cc26.png">


 
	
- Select the repository where your application files are.

<img width="459" alt="image" src="https://user-images.githubusercontent.com/113396504/217716841-fb16b3aa-8df1-4677-8cd6-23de7f86c5f8.png">



- Select the ACR to push the docker image to configure the pipeline. 

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217716860-f2ce30a4-543c-4cd5-aada-0a202d1ec3bb.png">



- The pipeline yaml file will be committed to the repository and then the docker image will be sent to the ACR.

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217716901-3f3dbd03-dabb-419b-a002-e7ba6cbf6f40.png">

 
- You will see the image in the repository of the ACR resource.

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217716929-79b832ba-ab24-4894-8361-fd64a013a215.png">


- Create a webapp resource in the Azure. 

     First, include the ACR credentials and docker image name in the tfvars file of crizmas_linux_webapp stack. Then run the             following command while you are in the ‘terraspace codes’ directory in your terminal. 

    terraspace up crizmas_linux_webapp 


- After creating the webapp resource, start creating a release to deploy the application to the webapp using the docker image that was created and stored in the ACR. Click on the lightning and enable continuous deployment trigger. 

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217717011-ddbcf342-3e4b-436d-9639-f59388ab1514.png">

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217717025-966b80e8-5caf-4b18-9ac6-524db3c3b674.png">

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217717066-5817b9a5-1eca-49a7-8bf0-6d149e33fb04.png">
 

- The release is manually triggered.
 
<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217717083-aae9d079-a4f1-4e73-b398-3491cc204976.png">

- Since port 5556 is used to publish the application, you need to add WEBSITES_PORT variable as an application setting in the configuration section of the webapp in azure portal. 

<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217717121-0be91ac5-e723-4f81-b4d6-79089c395477.png">


- After the deployment is arrived in the webapp, click on the url of your app in the overview section of the webapp to go to your app. 


<img width="468" alt="image" src="https://user-images.githubusercontent.com/113396504/217717133-71e3de4b-60fd-47fd-8fb3-18931c7802e5.png">

 
