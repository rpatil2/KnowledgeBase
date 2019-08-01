# Contents
1. Introduction
2. Features
3. References

## Introduction
* Kubernetes is a container orchestration tool 
* A group of nodes form a Kubernetes cluster
* Kubernetes runs containers in groups called pods
* Kubernetes services expose pods to the clusters and internet
* Kubernetes deployments control rollout and rollback of pods
* kubectl command is the primary way to interact with Kubernetes

## Features
* Building clusters from mix of physical and virtual infrastructure.
* Automated deployment rollout and rollback. 
* Seamless horizontal scaling. 
* Secret management. 
* Service discovery and load balancing. 
* Simple log collection. 
* Stateful application support. 
* Persistent volume management. 
* CPU and memory quotas. 
* Batch job processing.
* Role based access control. 
* High availability configurations.

## Authorization Modes
[Authorization Overview](https://kubernetes.io/docs/reference/access-authn-authz/authorization/)
```
The following authorization plug-in implementations are available, and are selected by a flag:
--authorization-mode=AlwaysDeny blocks all requests (used in tests).
--authorization-mode=AlwaysAllow allows all requests; use if you don’t need authorization.
--authorization-mode=ABAC allows for a simple local-file-based user-configured authorization policy. ABAC stands for Attribute-Based Access Control. authorization policy.
--authorization-mode=RBAC is an experimental implementation which allows for authorization to be driven by the Kubernetes API. RBAC stands for Roles-Based Access Control.
--authorization-mode=Webhook allows for authorization to be driven by a remote service using REST.
```

## References
* https://cloudacademy.com/course/introduction-to-kubernetes/
