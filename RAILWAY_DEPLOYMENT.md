# Railway Deployment Guide

This guide will help you deploy the Rails Friends App to Railway.

## Prerequisites

1. A Railway account (sign up at https://railway.app)
2. GitHub account (your code is already on GitHub)

## Deployment Steps

### 1. Connect Your Repository to Railway

1. Log in to Railway (https://railway.app)
2. Click "New Project"
3. Select "Deploy from GitHub repo"
4. Authorize Railway to access your GitHub account
5. Select the `rails_my_friend_app` repository

### 2. Add PostgreSQL Database

1. In your Railway project, click "New"
2. Select "Database" → "Add PostgreSQL"
3. Railway will automatically create a PostgreSQL database
4. The `DATABASE_URL` environment variable will be automatically set

### 3. Configure Environment Variables

Railway will automatically detect and use:
- `DATABASE_URL` (automatically set by PostgreSQL service)
- `RAILS_ENV=production` (automatically set)
- `PORT` (automatically set)

Optional environment variables you can add:
- `RAILS_MASTER_KEY` - If you have encrypted credentials, add your master key here
- `RAILWAY_PUBLIC_DOMAIN` - Your Railway app domain (automatically set)

### 4. Deploy

1. Railway will automatically detect the Rails app
2. It will run:
   - `bundle install` (installs gems including PostgreSQL adapter)
   - `rails db:migrate` (runs migrations via the release command in Procfile)
   - `rails server -p $PORT -e production` (starts the server)

### 5. Access Your App

1. Once deployed, Railway will provide you with a public URL
2. Visit the URL to access your app
3. Create an account to start using the Friends app

## Important Notes

- The app uses PostgreSQL in production (configured in `database.yml`)
- SQLite3 is used for development and test environments
- Authentication is required to access friends (except homepage)
- Each user can only see and manage their own friends

## Troubleshooting

If you encounter issues:

1. **Database connection errors**: Ensure PostgreSQL service is added and connected
2. **Migration errors**: Check the Railway logs for migration output
3. **Asset compilation**: Assets are configured to compile on Railway
4. **Port binding**: The app uses `$PORT` environment variable (Railway sets this automatically)

## Local Development

To run locally (requires Ruby 3.1.3):

```bash
bundle install
yarn install
rails db:create
rails db:migrate
rails server
```

Visit http://localhost:3000
