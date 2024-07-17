# Installing KRS

To install KRS, follow these steps:

## Step 1. Clone the KRS Repository

First, clone the KRS repository from GitHub using the following command:

`git clone https://github.com/kubetoolsca/krs.git`{{exec}}

Navigate to the "krs" directory:

`cd krs`{{exec}}

## Step 2. Install KRS Locally

If you haven't installed the "python3-venv" package, run the following commands:

`sudo apt install python3-venv`{{exec}}

To avoid conflicts with system packages, create and activate a virtual environment:

Create a virtual environment

`python3 -m venv myenv`{{exec}}

Activate the virtual environment

`source myenv/bin/activate`{{exec}}

Before installing KRS, install the `wheel` package:

`pip install wheel`{{exec}}

To install KRS locally on your system, run the following command:

`pip install .`{{exec}}

Verify if KRS is installed correctly:

`krs --help`{{exec}}

## Step 3. Initialize KRS

Initialize KRS by running:

`krs init`{{exec}}


## Step 4. Install Additional Tools (KServe)

Install KServe by using the quick installation script:

`curl -s "https://raw.githubusercontent.com/kserve/kserve/release-0.13/hack/quick_install.sh" | bash`{{exec}}

## Step 5. Scan the Clusters

Scan your Kubernetes cluster with KRS:

`krs scan`{{exec}}

## Step 6. Get Recommended Tools

To get recommendations for tools to use in your cluster, run:

`krs recommend`{{exec}}

## Step 7. Export Pod Info

To export pod information along with logs and events, run:

`krs export`{{exec}}

## Step 8. Detect and Fix Issues

Start an interactive session for health checks with:

`krs health`{{exec}}

Follow the prompts to choose the model provider, enter your API key, and select the namespace and pod for health checks. You can troubleshoot issues interactively.
