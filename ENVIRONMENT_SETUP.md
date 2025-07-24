# Environment Setup Guide

This document explains how to configure environment variables for the Dino
Runner Game tutorial monorepo.

## Quick Setup

1. **Copy the environment template:**

   ```bash
   cp .env.example .env
   ```

2. **Edit the `.env` file** with your preferred text editor and update the
   values as needed.

## Environment Variables Reference

### Server Configuration (All Stages)

- `PORT`: Server port (default: 8000)
- `HOST`: Server host (default: localhost)

### Database Configuration (Stage 4 Only)

#### Option 1: DATABASE_URL (Recommended)

Use a single connection string for your database:

```env
DATABASE_URL=postgresql://username:password@host:port/database
```

**Examples:**

- **Neon:** `postgresql://user:pass@host.neon.tech/db?sslmode=require`
- **Local:** `postgresql://postgres:password@localhost:5432/dino_runner`
- **Supabase:**
  `postgresql://postgres:pass@db.project.supabase.co:5432/postgres`

#### Option 2: Individual Database Settings

```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=dino_runner
DB_USER=postgres
DB_PASSWORD=your_password
```

#### Option 3: Deno Deploy Standard Variables

These are automatically set when using Deno Deploy's PostgreSQL add-on:

```env
PGHOST=your-host
PGUSER=your-user
PGPASSWORD=your-password
PGDATABASE=your-database
PGPORT=5432
```

### Feature Flags (Stage 4)

- `ENABLE_LEADERBOARD=true`: Enable global leaderboard functionality
- `ENABLE_CUSTOMIZATION=true`: Enable player customization features

## Stage-Specific Requirements

### Stages 1-3

Only need basic server configuration:

```env
PORT=8000
HOST=localhost
```

### Stage 4

Requires database configuration in addition to server settings. Choose one of
the three database configuration options above.

## Database Setup for Stage 4

### Using Neon (Recommended)

1. Visit [neon.tech](https://neon.tech) and create a free account
2. Create a new PostgreSQL database project
3. Copy the connection string from the dashboard
4. Set `DATABASE_URL` in your `.env` file

### Using Local PostgreSQL

1. Install PostgreSQL on your system
2. Create a database: `createdb dino_runner`
3. Create a user with appropriate permissions
4. Update the database settings in your `.env` file

## Testing Your Configuration

```bash
cd packages/stage-(1|2|3|4)
deno run --allow-net --allow-env --allow-read src/main.ts
```

The application will automatically:

- Load environment variables from the root `.env` file
- Initialize the database schema (Stage 4)
- Display connection status in the console
