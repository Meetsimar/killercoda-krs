# Installing KRS

To install KRS, follow these steps:

## Step 1. Clone the KRS Repository

First, clone the KRS repository from GitHub using the following command:

`git clone https://github.com/kubetoolsca/krs.git`{{exec}}

Navigate to the `krs` directory:

`cd krs`{{exec}}

## Step 2. Install KRS Locally

To install KRS locally on your system, run the following command:

`pip install .`{{exec}}

Verify if KRS is installed correctly:

`krs --help`{{exec}}

## Step 3. Initialize KRS

Initialize KRS by running:

`krs init`{{exec}}

## Step 4. Scan the Clusters

Scan your Kubernetes cluster with KRS:

`krs scan`{{exec}}

## Step 5. Get Recommended Tools

To get recommendations for tools to use in your cluster, run:

`krs recommend`{{exec}}

## Step 6. Install Additional Tools

For example, install Helm and deploy KubeView:

Run the following script to install Helm:

```bash
sudo apt-get update && \
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add - && \
sudo apt-get install apt-transport-https --yes && \
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list && \
sudo apt-get update && \
sudo apt-get install helm
```{{exec}}

Add the KubeView repository:

`helm repo add kubeview https://benc-uk.github.io/kubeview/charts`{{exec}}

Install KubeView:

`helm install kubeview kubeview/kubeview`{{exec}}

## Step 7. Export Pod Info

To export pod information along with logs and events, run:

`krs export`{{exec}}

## Step 8. Detect and Fix Issues

Start an interactive session for health checks with:

`krs health`{{exec}}

Follow the prompts to choose the model provider, enter your API key, and select the namespace and pod for health checks. You can troubleshoot issues interactively.
