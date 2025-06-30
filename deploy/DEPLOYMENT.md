# Deployment Guide

## Prerequisites
- Docker + docker-compose
- Node.js + npm (for local dev)

## Steps
1. Clone the repo
2. Setup environment variables for server and database cred config
3. Run `docker-compose up --build`
4. App runs on http://localhost:3000 (client) and http://localhost:5000 (server)

## Cloud Deployment
- Can be deployed using Vercel, AWS, or other cloud providers.
- Recommended: CI/CD via GitHub Actions.