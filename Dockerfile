# Stage 1: Build stage using Node (optional for future tooling)
# For a static HTML/CSS site, we use Nginx directly

# Use official Nginx Alpine image for lightweight production serving
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static assets
RUN rm -rf ./*

# Copy website files into the container
COPY index.html .
COPY styles.css .

# Copy custom Nginx configuration (optional but recommended)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Health check to verify the container is running correctly
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost:80 || exit 1

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]