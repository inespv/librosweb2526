# 1. Imagen base de Node.js
FROM node:20
# 2. Directorio de trabajo dentro del contenedor
WORKDIR /libros
# 3. Copiar archivos de dependencias
COPY package*.json ./
# 4. Instalar dependencias
RUN npm install
# 5. Copiar el resto del código
COPY . .
# 6. Exponer el puerto que usa Express (ej. 3000)
EXPOSE 3000
# 7. Comando de arranque
CMD ["node", "index.js"]
