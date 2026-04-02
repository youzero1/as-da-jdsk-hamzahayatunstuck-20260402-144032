# NexusCo - About Us Page

A modern, responsive **About Us** webpage built with pure HTML and CSS, served via **Nginx** inside a **Docker** container.

---

## 📁 Project Structure

```
├── index.html          # Main HTML page
├── styles.css          # All CSS styles
├── Dockerfile          # Docker image configuration
├── docker-compose.yml  # Docker Compose configuration
├── nginx.conf          # Custom Nginx server configuration
├── .dockerignore       # Files to exclude from Docker build
└── README.md           # This file
```

---

## 🚀 Getting Started

### Prerequisites
- [Docker](https://www.docker.com/get-started) installed
- [Docker Compose](https://docs.docker.com/compose/install/) installed

---

## 🐳 Running with Docker

### Option 1: Using Docker Compose (Recommended)

```bash
# Build and start the container
docker-compose up --build

# Run in detached (background) mode
docker-compose up --build -d

# Stop the container
docker-compose down
```

Visit: **http://localhost:8080**

---

### Option 2: Using Docker CLI

```bash
# Build the Docker image
docker build -t nexusco-about-us .

# Run the container
docker run -d \
  --name about-us-website \
  -p 8080:80 \
  --restart unless-stopped \
  nexusco-about-us

# Stop the container
docker stop about-us-website

# Remove the container
docker rm about-us-website
```

Visit: **http://localhost:8080**

---

## 🛠️ Useful Docker Commands

```bash
# View running containers
docker ps

# View container logs
docker logs about-us-website

# Check container health
docker inspect --format='{{.State.Health.Status}}' about-us-website

# Rebuild without cache
docker-compose build --no-cache

# Remove image
docker rmi nexusco-about-us
```

---

## 🌐 Features

- ✅ Fully responsive design (mobile, tablet, desktop)
- ✅ Dark theme with purple gradient accents
- ✅ Smooth scroll navigation
- ✅ Animated sections on scroll (Intersection Observer)
- ✅ Hero section with floating cards
- ✅ About / Mission / Vision / Promise cards
- ✅ Core Values grid
- ✅ Team member cards with social links
- ✅ Company timeline
- ✅ Contact form section
- ✅ Responsive footer
- ✅ Mobile hamburger menu

---

## 🐳 Docker Details

| Property       | Value                  |
|----------------|------------------------|
| Base Image     | `nginx:alpine`         |
| Exposed Port   | `80` (mapped to `8080`)|
| Health Check   | Every 30s              |
| Restart Policy | `unless-stopped`       |

---

## 📄 License

MIT License — feel free to use and modify.
