# 🚀 PASOS RÁPIDOS PARA DESPLEGAR EN RAILWAY

## ✅ Preparación Completada

Ya hemos preparado tu proyecto con:
- ✅ `Procfile` - Configuración de ejecución
- ✅ `railway.json` - Configuración de build y deploy
- ✅ `requirements.txt` actualizado con WhiteNoise y dj-database-url
- ✅ `settings.py` configurado para Railway
- ✅ `.env.railway` - Ejemplo de variables de entorno
- ✅ Código subido a GitHub

## 🎯 AHORA SIGUE ESTOS PASOS:

### 1️⃣ Crear Cuenta en Railway (2 minutos)
1. Ve a: https://railway.app
2. Haz clic en "Login" o "Start a New Project"
3. Selecciona "Login with GitHub"
4. Autoriza a Railway

### 2️⃣ Crear Nuevo Proyecto (1 minuto)
1. En Railway, haz clic en **"New Project"**
2. Selecciona **"Deploy from GitHub repo"**
3. Busca y selecciona: **`bodega_belen_DJ`**
4. Railway comenzará a detectar tu proyecto

### 3️⃣ Agregar Base de Datos PostgreSQL (1 minuto)
1. En tu proyecto, haz clic en **"+ New"** (arriba a la derecha)
2. Selecciona **"Database"**
3. Elige **"Add PostgreSQL"**
4. ¡Listo! Railway configura automáticamente `DATABASE_URL`

### 4️⃣ Configurar Variables de Entorno (3 minutos)
1. Haz clic en tu servicio (el que tiene tu código)
2. Ve a la pestaña **"Variables"**
3. Agrega estas variables:

```
SECRET_KEY=tu-clave-super-secreta-aqui
DEBUG=False
ALLOWED_HOSTS=.railway.app
RAILWAY_ENVIRONMENT=production
```

**💡 Generar SECRET_KEY:** Ve a https://djecrety.ir/ y copia la clave generada

### 5️⃣ Desplegar (Automático - 3-5 minutos)
Railway automáticamente:
- ✅ Instala dependencias
- ✅ Ejecuta migraciones
- ✅ Recolecta archivos estáticos
- ✅ Inicia el servidor

**Ver progreso:** Pestaña "Deployments" → Ver logs en tiempo real

### 6️⃣ Generar Dominio (30 segundos)
1. Ve a la pestaña **"Settings"** de tu servicio
2. Busca la sección **"Networking"**
3. Haz clic en **"Generate Domain"**
4. Copia la URL: `https://tu-proyecto.up.railway.app`

### 7️⃣ Crear Superusuario (2 minutos)
1. En tu servicio, ve a **"Settings"**
2. Haz clic en **"Open Shell"** (o usa el ícono de terminal)
3. Ejecuta:
```bash
python manage.py createsuperuser
```
4. Ingresa:
   - Usuario: `admin` (o el que prefieras)
   - Email: tu email
   - Contraseña: (mínimo 8 caracteres)

### 8️⃣ ¡Acceder a tu Aplicación! 🎉
1. Abre la URL generada: `https://tu-proyecto.up.railway.app`
2. Deberías ver la página de login
3. Ingresa con el superusuario que creaste
4. ¡Listo! Tu aplicación está en producción

---

## 🔧 Comandos Útiles en Railway Shell

```bash
# Ver estado de migraciones
python manage.py showmigrations

# Ejecutar migraciones manualmente
python manage.py migrate

# Recolectar archivos estáticos
python manage.py collectstatic --noinput

# Ver usuarios
python manage.py shell
>>> from django.contrib.auth.models import User
>>> User.objects.all()
```

---

## 🔄 Actualizar la Aplicación

Cada vez que hagas cambios:
```bash
git add .
git commit -m "Descripción de cambios"
git push origin main
```

Railway detectará automáticamente los cambios y desplegará la nueva versión.

---

## ⚠️ Solución de Problemas Comunes

### ❌ Error: "Application failed to respond"
**Solución:** 
- Verifica que todas las variables de entorno estén configuradas
- Revisa los logs en la pestaña "Deployments"

### ❌ Error: "DisallowedHost"
**Solución:**
- Asegúrate de que `ALLOWED_HOSTS` incluya `.railway.app`
- O agrega el dominio específico que Railway te dio

### ❌ Error de Base de Datos
**Solución:**
- Verifica que PostgreSQL esté agregado al proyecto
- Confirma que `DATABASE_URL` aparezca en las variables
- Ejecuta migraciones desde el shell: `python manage.py migrate`

### ❌ Archivos Estáticos no Cargan
**Solución:**
- Ejecuta en el shell: `python manage.py collectstatic --noinput`
- Verifica que WhiteNoise esté en `requirements.txt`

---

## 💰 Costos de Railway

- **Plan Hobby (Gratuito):** $5 USD de crédito mensual
  - Suficiente para proyectos pequeños
  - ~500 horas de ejecución
  
- **Plan Developer:** $5 USD/mes + uso
  - Para proyectos en crecimiento
  
- **Plan Pro:** $20 USD/mes + uso
  - Para producción seria

**Para empezar:** El plan gratuito es más que suficiente.

---

## 📊 Monitoreo

- **Logs en Tiempo Real:** Pestaña "Deployments"
- **Métricas:** CPU, Memoria, Red
- **Reiniciar Servicio:** Settings → Restart

---

## 📚 Recursos

- 📖 [Documentación de Railway](https://docs.railway.app)
- 💬 [Discord de Railway](https://discord.gg/railway)
- 🎓 [Guía Django en Railway](https://docs.railway.app/guides/django)

---

## ✅ Checklist Final

Marca cada paso al completarlo:

- [ ] Cuenta de Railway creada
- [ ] Proyecto conectado desde GitHub
- [ ] PostgreSQL agregado
- [ ] Variables de entorno configuradas (SECRET_KEY, DEBUG, ALLOWED_HOSTS)
- [ ] Build completado exitosamente
- [ ] Dominio generado
- [ ] Superusuario creado
- [ ] Login funciona correctamente
- [ ] Dashboard carga correctamente
- [ ] Puedes crear productos/clientes/ventas

---

## 🎉 ¡Felicidades!

Tu aplicación **Bodega de Belén** ahora está desplegada en Railway y accesible desde cualquier lugar del mundo.

**URL de tu app:** `https://tu-proyecto.up.railway.app`

---

**¿Necesitas ayuda?** Revisa el archivo `DESPLIEGUE_RAILWAY.md` para más detalles.
