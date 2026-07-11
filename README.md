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

## 🚀 DevOps Infrastructure Lab: Migration to Kubernetes

This repository serves as a practical demonstration of modern infrastructure management. We have transitioned from a containerized Docker Swarm setup to a production-grade **Kubernetes (k8s)** architecture using **Minikube**.

### Prerequisites
Before beginning, ensure you have the following tools installed and configured:

* **[Docker Desktop](https://www.docker.com/products/docker-desktop/)**: The virtualization engine used to manage container runtimes.
* **[Minikube](https://minikube.sigs.k8s.io/docs/start/)**: A local Kubernetes implementation that mimics a cloud-based server cluster.
* **[kubectl](https://kubernetes.io/docs/tasks/tools/)**: The official command-line interface for communicating with the Kubernetes API.

---

### Deployment Workflow (Step-by-Step)

Follow these steps to replicate the environment on your local machine:

1.  **Initialize the Local Cluster**
    ```bash
    minikube start
    ```
    *Starts the virtual Kubernetes environment on your machine.*

2.  **Configure Terminal Environment**
    ```bash
    minikube -p minikube docker-env --shell powershell | Invoke-Expression
    ```
    *Points your terminal to Minikube's internal Docker daemon, allowing you to build images directly inside the cluster.*

3.  **Build the Container Image**
    ```bash
    docker build -t nike-web:latest .
    ```
    *Packages the application source code into a standardized container image.*

4. **Deploy to Kubernetes**
    ```bash
    kubectl apply -f k8s/
    ```
    *Instructs the Kubernetes orchestrator to execute the deployment and service configurations defined in the `k8s/` directory.*

5. **Verify Cluster State**
    ```bash
    kubectl get pods
    ```
    *Monitors the deployment. Wait for the pod status to transition from `Pending` to `Running`.*

6. **Expose the Service**
    ```bash
    minikube service nike-web-service
    ```
    *Establishes a secure networking tunnel from the cluster to your local host, opening the application in your default browser.*

7. **Teardown (Post-Development)**
    ```bash
    minikube stop
    ```
    *Properly terminates the cluster to release allocated system RAM and CPU resources.*

---

## 🇪🇸 Laboratorio de Infraestructura DevOps: Migración a Kubernetes

Este repositorio demuestra la transición técnica desde una orquestación basada en contenedores simples hacia una arquitectura profesional de **Kubernetes (k8s)** utilizando **Minikube**.

### Requisitos previos
Para ejecutar este laboratorio, asegúrate de tener instaladas las siguientes herramientas:

* **[Docker Desktop](https://www.docker.com/products/docker-desktop/)**: Plataforma necesaria para gestionar los contenedores.
* **[Minikube](https://minikube.sigs.k8s.io/docs/start/)**: Entorno que simula un clúster de servidores profesional en tu equipo local.
* **[kubectl](https://kubernetes.io/docs/tasks/tools/)**: Herramienta de línea de comandos para administrar el clúster.

---

### Guía de Despliegue Paso a Paso

Sigue estas instrucciones detalladas para replicar el entorno:

1.  **Iniciar el clúster local**
    ```bash
    minikube start
    ```
    *Inicializa el entorno virtual que imita la infraestructura de un servidor real.*

2.  **Configurar el entorno de terminal**
    ```bash
    minikube -p minikube docker-env --shell powershell | Invoke-Expression
    ```
    *Vincular tu terminal al motor de Docker interno de Minikube asegura que las imágenes se construyan directamente dentro del clúster.*

3.  **Construir la imagen del contenedor**
    ```bash
    docker build -t nike-web:latest .
    ```
    *Empaqueta el código fuente de tu aplicación en una imagen estándar de contenedor lista para producción.*

4. **Desplegar en el clúster**
    ```bash
    kubectl apply -f k8s/
    ```
    *Ordena a Kubernetes ejecutar las configuraciones de despliegue y red contenidas en la carpeta `k8s/`.*

5. **Verificar el estado del clúster**
    ```bash
    kubectl get pods
    ```
    *Supervisa los pods (instancias). Espera hasta que el estado cambie de `Pending` a **`Running`**.*

6. **Acceder a la aplicación**
    ```bash
    minikube service nike-web-service
    ```
    *Establece un puente de red seguro hacia tu navegador, permitiéndote visualizar la aplicación desplegada.*

7. **Apagado controlado**
    ```bash
    minikube stop