# Pomerium Kubernetes Recipe

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/robincher/pomerium-kubernetes-recipe/blob/main/LICENSE)

## Introduction

Pomerium is a Identity aware proxy that aim to provide secure access from an untrusted network to your upstream services.

This repository is a collection of recipes for deploying Pomerium into a Kubernetes cluster.

I have written a detailed post about the implementation and motivation behind this deploying Pomerium IAP

## Preparation

This recipe is tested with the following

1. AWS Elastic Kubernetes Service (EKS) 1.17
2. Application LoadBalancer with HTTPS
3. Nginx Ingress (Optional) for Kubernetes Cluster - You can set-up Pomerium proxy service as a node port and bind directly to the Application Load Balancer

### System Context

![context-diagram.png](assets/diagram.png)

## Directory Structure

```
|- assets
|- workloads
|-- pomerium
|-- common
```

1. Pomerium : Consists of all Pomerium related resources
2. Common : Other resources like mock services

## References

- [Pomerium Official Website](https://www.pomerium.com/)
- [Post on Pomerium with EKS](https://dev.to/robincher/moving-to-pomerium-identity-aware-proxy-4fom)
