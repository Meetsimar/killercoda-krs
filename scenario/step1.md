
# Installing KRS

To install KRS, follow these steps:

## Step 1. Clone the KRS Repository

First, clone the KRS repository from GitHub using the following command:

```bash
git clone https://github.com/kubetoolsca/krs.git
```

Navigate to the `krs` directory:

```bash
cd krs
```

## Step 2. Install KRS Locally

To install KRS locally on your system, run the following command:

```bash
pip install .
```

Verify if KRS is installed correctly:

```bash
krs --help
```

## Step 3. Initialize KRS

Initialize KRS by running:

```bash
krs init
```

## Step 4. Scan the Clusters

Scan your Kubernetes cluster with KRS:

```bash
krs scan
```

## Step 5. Get Recommended Tools

To get recommendations for tools to use in your cluster, run:

```bash
krs recommend
```

## Step 6. Install Additional Tools

For example, install Helm and deploy KubeView:

```bash
brew install helm
helm install kubeview kubeview
```

## Step 7. Export Pod Info

To export pod information along with logs and events, run:

```bash
krs export
```

## Step 8. Detect and Fix Issues

Start an interactive session for health checks with:

```bash
krs health
```

Follow the prompts to choose the model provider, enter your API key, and select the namespace and pod for health checks. You can troubleshoot issues interactively.

## Step 9. Create a YAML File and Deploy a Pod

Create a YAML file `deploy.yaml` with the following content:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        resources:
          limits:
            memory: 4Gi
```

Deploy the Pod using:

```bash
kubectl apply -f deploy.yaml
```

## Step 10. Run a Scan

Run a scan to check for any issues:

```bash
krs analyze
```

## Step 11. Detailed Explanation of the Issues

For a more detailed explanation of any issues found, use:

```bash
krs analyze --explain
```

## Step 12. Get Official Documentation

You can also fetch official documentation from Kubernetes.io using:

```bash
krs analyze --with-doc
```
