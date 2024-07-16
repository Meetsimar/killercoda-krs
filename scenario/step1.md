# Step 1: Clone the KRS Repository

First, we need to clone the KRS repository from GitHub. Run the following command:

```bash
git clone https://github.com/kubetoolsca/krs.git
```

After cloning, navigate to the `krs` directory:

```bash
cd krs
```

In the next steps, we will install KRS locally and explore its functionalities.

# Step 2: Install KRS Locally

To install KRS locally on your system, run the following command:

```bash
pip install .
```

Check if the tool has been successfully installed using:

```bash
krs --help
```

You should see the KRS help menu, indicating that KRS is installed correctly.

# Step 3: Initialize KRS

Initialize KRS by running the following command:

```bash
krs init
```

You should see a message indicating that KRS has been initialized successfully.

# Step 4: Scan the Clusters

Scan your Kubernetes cluster with KRS:

```bash
krs scan
```

You should see output similar to this:

```
Scanning your cluster...
Cluster scanned successfully...
Extracted tools used in cluster...
The cluster is using the following tools:
+-------------+--------+-----------------------------+---------------+
| Tool Name   |   Rank | Category                    | CNCF Status   |
+=============+========+=============================+===============+
| autoscaler  |      5 | Cluster with Core CLI tools | unlisted      |
+-------------+--------+-----------------------------+---------------+
```

# Step 5: Get Recommended Tools

To get recommendations for tools to use in your cluster, run:

```bash
krs recommend
```

You should see output similar to this:

```
Our recommended tools for this deployment are:
+-----------------------------+------------------+-------------+---------------+
| Category                    | Recommendation   | Tool Name   | CNCF Status   |
+=============================+==================+=============+===============+
| Cluster with Core CLI tools | Recommended tool | k9s         | unlisted      |
+-----------------------------+------------------+-------------+---------------+
```

# Step 6: Install Additional Tools

For example, you can install Helm and deploy KubeView:

```bash
brew install helm
helm install kubeview kubeview
```

You should see output similar to this:

```
NAME: kubeview
LAST DEPLOYED: Sat Jun 29 21:44:17 2024
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
=====================================
==== KubeView has been deployed! ====
=====================================
To get the external IP of your application, run the following:
export SERVICE_IP=$(kubectl get svc --namespace default kubeview -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
echo http://$SERVICE_IP
NOTE: It may take a few minutes for the LoadBalancer IP to be available.
You can watch the status of by running 'kubectl get --namespace default svc -w kubeview'
```

# Step 7: Export Pod Info

To export pod information along with logs and events, run:

```bash
krs export
```

You should see a message indicating that the pod info has been exported and saved as a JSON file in the current directory.

# Step 8: Detect and Fix Issues

To start an interactive session for health checks, run:

```bash
krs health
```

Follow the prompts to choose the model provider, enter your API key, and select the namespace and pod for health checks. You will see logs and events from the selected pod, and you can troubleshoot any issues interactively.
