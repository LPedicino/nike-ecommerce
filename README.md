<h1 align="center"> Nike E-commerce </h1>

<h2 align="center"> Welcome to my E-commerce Clone </h2>

<br>

<p align="center">
<img width="600" alt="nike-preview" src="https://user-images.githubusercontent.com/50922820/199271248-35f2a5c3-182d-40af-9045-713efb7c544d.JPG">
</p>

<h4 align="center"> 
Hi, I'm Leandro. This project is a full-featured E-commerce clone built with Vite and TailwindCSS, incorporating modern tools such as Redux Toolkit and React Toast.
</h4>

<br>

<span align="center">

##### :point_right: Live Demo: [Nike Shop](https://nike-ecommerce-tau.vercel.app/)

</span>

---

# Nike E-commerce: Infrastructure Lifecycle Lab

## Project Overview
This repository documents the end-to-end infrastructure evolution of a React-based E-commerce application. We transitioned from a standard local development environment to a containerized architecture (**Docker Swarm**) and finally to a production-grade orchestrator (**Kubernetes**).

---

## 🛠️ Technology Stack
* **Docker Desktop**: The virtualization engine used to manage container runtimes and simulate local environments.
* **Docker Swarm**: A native Docker tool used for container orchestration and service management.
* **Minikube**: A tool that runs a local Kubernetes cluster, simulating a cloud-based server environment.
* **kubectl**: The official command-line interface used to manage, inspect, and communicate with the Kubernetes API.

---

## 🏗️ Infrastructure Lifecycle

### Phase 1: Containerization & Docker Swarm Orchestration
1. **Repository Setup**: Cloned the source application and established the container boundary using a custom `Dockerfile` (optimized with Nginx for static serving).
2. **Local Orchestration**: Implemented `docker-compose.yml` to define service network, replicas, and local volume configurations for Docker Swarm compatibility.
3. **Swarm Validation**: Initialized Swarm mode to validate service scaling and load balancing basics in a local environment.

### Phase 2: Migration to Kubernetes (k8s)
1. **Manifest Architecture**: Decoupled service configuration into declarative YAML files stored in `/k8s`.
    * `deployment.yaml`: Defines the desired state, including pod replicas, image pull policies, and resource health checks.
    * `service.yaml`: Configures network abstraction to expose the application fleet.
2. **Cluster Orchestration**: Deployed the stack to a **Minikube** cluster, ensuring state management and service discovery.

---

## 🚀 Deployment Guide (Step-by-Step)

### Prerequisites
Ensure the following tools are installed:
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Minikube](https://minikube.sigs.k8s.io/docs/start/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/)

### Workflow
1. **Start Cluster**: `minikube start`
2. **Configure Terminal Bridge**: `minikube -p minikube docker-env --shell powershell | Invoke-Expression`
3. **Build Container Image**: `docker build -t nike-web:latest .`
4. **Deploy Manifests**: `kubectl apply -f k8s/`
5. **Verify Readiness**: `kubectl get pods`
6. **Access App**: `minikube service nike-web-service`
7. **Teardown**: `minikube stop`

---

## 🇪🇸 Bitácora Técnica: Laboratorio de Migración DevOps

Este documento detalla la evolución técnica del proyecto Nike E-commerce. Pasamos de una aplicación estática a una arquitectura orquestada, validando el proceso primero con Docker y escalando finalmente a Kubernetes.

### Fases de Ejecución
1. **Contenerización**: Creamos un `Dockerfile` optimizado con Nginx.
2. **Orquestación con Swarm**: Implementamos `docker-compose.yml` para gestionar la arquitectura.
3. **Migración a Kubernetes**: Creamos la carpeta `k8s/` con los manifiestos `deployment.yaml` (gestión de pods) y `service.yaml` (gestión de red).

### Guía de Despliegue Profesional
Para desplegar esta arquitectura, sigue estos pasos en tu terminal (PowerShell):

1. **Iniciar Clúster**: `minikube start`
2. **Vincular Terminal**: `minikube -p minikube docker-env --shell powershell | Invoke-Expression`
3. **Build de Imagen**: `docker build -t nike-web:latest .`
4. **Aplicar Manifiestos**: `kubectl apply -f k8s/`
5. **Validar Pods**: `kubectl get pods`
6. **Abrir Servicio**: `minikube service nike-web-service`
7. **Detener Entorno**: `minikube stop`

---

### 💡 Troubleshooting & Best Practices

* **Ensure Docker is Running**: Before initiating `minikube start`, confirm that Docker Desktop is fully initialized and the daemon is active.
* **PowerShell Permissions**: If the `docker-env` command fails due to execution policy, run your terminal as Administrator or execute `Set-ExecutionPolicy RemoteSigned` in your PowerShell session.
* **Resource Allocation**: Minikube consumes system resources. If your PC performance drops, ensure you have allocated enough RAM/CPU in Docker Desktop settings.

---

### 💡 Solución de problemas y buenas prácticas

* **Verifica que Docker esté activo**: Antes de iniciar `minikube start`, confirma que Docker Desktop esté totalmente inicializado y el daemon funcionando.
* **Permisos de PowerShell**: Si el comando `docker-env` falla debido a la política de ejecución, abre tu terminal como Administrador o ejecuta `Set-ExecutionPolicy RemoteSigned` en tu sesión.
* **Asignación de recursos**: Minikube consume recursos de sistema. Si notas que el rendimiento de tu PC disminuye, asegúrate de haber asignado suficiente RAM/CPU en la configuración de Docker Desktop.