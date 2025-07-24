# 🦕 Dino Runner Game Tutorial - Monorepo

A comprehensive tutorial series for building a Dino Runner game using Deno and TypeScript, organized as a Deno workspace.

## Project Structure

This monorepo contains 4 tutorial stages, each building upon the previous one:

```
game-tutorial/
├── deno.json                 # Workspace configuration
├── packages/
│   ├── stage-1/              # Foundation & Setup
│   ├── stage-2/              # Enhanced Features
│   ├── stage-3/              # Advanced Gameplay
│   └── stage-4/              # Database Integration & Global Leaderboards
└── README.md
```

## Getting Started

### Prerequisites

- [Deno](https://deno.com/) installed on your system
- For Stage 4: PostgreSQL database (we recommend [Neon](https://neon.tech/) for cloud hosting)

### Environment Setup

The monorepo uses a shared environment configuration:

```bash
# Copy the example environment file
cp .env.example .env

# Edit .env with your configuration
# For Stages 1-3: Only PORT and HOST are needed
# For Stage 4: Add your database credentials
```

The `.env` file contains configuration for all stages:

- **Stages 1-3**: Basic server configuration (PORT, HOST)
- **Stage 4**: Database connection settings, feature flags

### Running the Tutorial Stages

You can run any stage from the workspace root using the provided tasks:

#### Development Mode (with file watching)
```bash
# Stage 1 - Foundation & Setup
deno task dev:stage1

# Stage 2 - Enhanced Features  
deno task dev:stage2

# Stage 3 - Advanced Gameplay
deno task dev:stage3

# Stage 4 - Database Integration
deno task dev:stage4
```

#### Production Mode
```bash
# Stage 1
deno task start:stage1

# Stage 2
deno task start:stage2

# Stage 3
deno task start:stage3

# Stage 4
deno task start:stage4
```

### Working with Individual Stages

You can also navigate to any stage and run it directly:

```bash
cd packages/stage-1
deno task dev
```

## Tutorial Stages

### Stage 1: Foundation & Setup
- Basic web server setup with Oak
- Static file serving
- Simple API endpoints
- Health checks

### Stage 2: Enhanced Features
- Environment configuration
- Improved error handling
- Extended API functionality

### Stage 3: Advanced Gameplay
- Game logic implementation
- Score tracking
- Advanced game mechanics

### Stage 4: Database Integration & Global Leaderboards
- PostgreSQL database integration
- User customization features
- Global leaderboard system
- Data persistence

## Dependencies

- **@oak/oak**: Web framework for Deno
- **pg**: PostgreSQL client (Stage 4 only)

All dependencies are managed at the workspace level in the root `deno.json`.

## Development

Each stage can be developed independently while sharing the workspace configuration. The stages are designed to be educational, showing progressive enhancement of the game from basic setup to full database integration.
