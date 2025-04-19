# k8s-ingress-flask-helloworld
Minimal Kubernetes Ingress setup using the official NGINX Ingress Controller on a local KIND cluster. Includes multiple services, host-based routing, and domain resolution via /etc/hosts.


A minimal Kubernetes Ingress setup using the official NGINX Ingress Controller on KIND.

### Features

- Local cluster via KIND
- Ingress routing for:
  - `hello-world` service → `k8s-souravcodes.in`
- Manual domain resolution via `/etc/hosts`

### Usage

```bash
kubectl apply -f ingress-controller/install.yaml
kubectl apply -f hello-world/
kubectl apply -f booking/
kubectl port-forward svc/ingress-nginx-controller -n ingress-nginx 8080:80 or use dns
