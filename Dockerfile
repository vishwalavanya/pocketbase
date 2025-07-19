FROM alpine:latest

WORKDIR /app

# Copy the PocketBase binary and start script
COPY pocketbase.exe /app/pocketbase
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh /app/pocketbase

# Expose the port your app runs on
EXPOSE 10000

# Start command
CMD ["/app/start.sh"]
