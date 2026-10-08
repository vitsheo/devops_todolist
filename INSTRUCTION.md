# Instructions for Deploying and Testing ToDo Application

## 1. How to Apply Manifests
Apply all Kubernetes manifests from the root directory:

```bash
kubectl apply -f .infrastructure/namespace.yml
kubectl apply -f .infrastructure/todoapp-pod.yml
kubectl apply -f .infrastructure/busybox.yml
```

---

## 2. How to Test the Application using Port-Forward
To access the ToDo application from your local machine browser:

```bash
kubectl port-forward pod/todoapp 8000:8000 -n todoapp
```
Now open your browser and navigate to: http://127.0.0.1:8000

---

## 3. How to Test using busyboxplus:curl Container
To test connectivity internally inside the cluster:

```bash
# Enter the busybox container interactively
kubectl exec -it busybox-curl -n todoapp -- sh

# Inside the container, run curl against the ToDo app's internal IP or pod name
curl http://todoapp:8000/
```
