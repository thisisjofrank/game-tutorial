# 🦕 Dino Runner Game Tutorial

A comprehensive step-by-step tutorial series for building a Dino Runner game
using Deno and TypeScript. Learn modern web development by building a complete
game from scratch!

## Quick Start

**New to this tutorial?** Start here:

1. **Install Deno**: Visit [deno.com](https://deno.com/) and follow installation
   instructions
2. **Clone this repository**:
   `git clone https://github.com/thisisjofrank/game-tutorial.git`
3. **Set up environment**: `cp .env.example .env` (edit if needed)
4. **Start with Stage 1**: `deno task dev:stage1`
5. **Open your browser**: Visit [http://localhost:8000](http://localhost:8000)

## Tutorial Progression

This tutorial is designed to be followed in order. Each stage builds on the
previous one. You can either check out the code for each stage, or you can use
the starter kits and write the code yourself using the provided instructions in
each starter kit.

| Stage                                                         | Focus                | What You'll Learn                              |
| ------------------------------------------------------------- | -------------------- | ---------------------------------------------- |
| **[Stage 1](packages/stage-1/README.md)**                     | Foundation & Setup   | Basic web server, static files, API endpoints  |
| **[Stage 1 starter kit](packages/stage-1-starter/README.md)** |                      |                                                |
| **[Stage 2](packages/stage-2/README.md)**                     | Enhanced Features    | Canvas setup, drawing shapes, handling input   |
| **[Stage 2 starter kit](packages/stage-2-starter/README.md)** |                      |                                                |
| **[Stage 3](packages/stage-3/README.md)**                     | Advanced Gameplay    | Game logic, score tracking, advanced mechanics |
| **[Stage 3 starter kit](packages/stage-3-starter/README.md)** |                      |                                                |
| **[Stage 4](packages/stage-4/README.md)**                     | Database Integration | PostgreSQL, leaderboards, user customization   |
| **[Stage 4 starter kit](packages/stage-4-starter/README.md)** |                      |                                                |

## Running the Stages

### Quick Commands (from root directory)

```bash
# Development mode (auto-reload on file changes)
deno task dev:stage1    # Stage 1: Foundation
deno task dev:stage2    # Stage 2: Enhanced Features  
deno task dev:stage3    # Stage 3: Advanced Gameplay
deno task dev:stage4    # Stage 4: Database Integration

# Production mode
deno task start:stage1  # etc...
```

### Alternative: Navigate to individual stages

```bash
cd packages/stage-1
deno task dev
```

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

Each stage can be developed independently while sharing the workspace
configuration. The stages are designed to be educational, showing progressive
enhancement of the game from basic setup to full database integration.
