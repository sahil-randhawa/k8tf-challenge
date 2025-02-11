# README.md

# My Nginx Helm Chart

This Helm chart deploys a containerized application (nginx) using Kubernetes. It includes a Deployment and a Service to manage the application.

## Prerequisites

- Kubernetes cluster
- Helm installed

## Package the chart

To package the chart, run the following command in the root directory of the chart:

```bash
helm package .
```

## Installation

To install the chart, use the following command:

```bash
helm install my-nginx-release ./my-helm-chart
```

## Configuration

To customize the deployment modify the `values.yaml` file.

## Verify the installation

To verify the installation, run:

```bash
kubectl get deployments
kubectl get pods
kubectl get services
```


## Uninstallation

To uninstall the chart, run:

```bash
helm uninstall my-nginx-release
```
