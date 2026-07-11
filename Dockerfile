# ==========================================
# ETAPA 1: Construcción (Build)
# ==========================================
# Usamos una imagen de Node ligera para instalar dependencias y compilar
FROM node:18-alpine AS builder

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos solo los archivos de dependencias primero (aprovecha el caché de Docker)
COPY package.json package-lock.json* ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto del código de la aplicación
COPY . .

# Ejecutamos el build de Vite (esto genera la carpeta /dist con el código listo para prod)
RUN npm run build

# ==========================================
# ETAPA 2: Producción (Serve)
# ==========================================
# Usamos un servidor web súper ligero (Nginx en Alpine Linux)
FROM nginx:alpine

# Copiamos ÚNICAMENTE la carpeta /dist generada en la Etapa 1 a la carpeta pública de Nginx
COPY --from=builder /app/dist /usr/share/nginx/html

# Exponemos el puerto 80
EXPOSE 80

# Arrancamos Nginx
CMD ["nginx", "-g", "daemon off;"]