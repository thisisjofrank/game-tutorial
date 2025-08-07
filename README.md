# 🦕 Dino Runner Game Tutorial

A comprehensive step-by-step tutorial series for building a Dino Runner game
using Deno and TypeScript. Learn modern web development by building a complete
game from scratch!

![Gif of the game, a square 'dinosaur' runs through a desert, jumping over cacti](https://github.com/user-attachments/assets/4ad61004-34b0-435c-9d9d-eb148b886194)


## Quick Start

You can either clone this repository with all submodules to explore the code, or
start with a specific stage. We've created easily deployable starter kits for
each stage, allowing you to focus on learning without worrying about setup.
We've also provided the finished packages if you'd rather see the completed code
and read through it yourself.

We want to make this tutorial as accessible as possible, so you can choose your
own adventure! Choose the approach that suits you best from below and start
building your Dino Runner game today!

## Option 1: Using the starter kits

Each starter kit is designed to be easily deployable on Deno Deploy. You can
start with any stage, but we recommend starting with Stage 1 to build a solid
foundation, then progress through the stages sequentially, the readme files in
each stage will guide you through the process.

[![Deploy on Deno](https://deno.com/button)](https://app.deno.com/new?clone=https://github.com/thisisjofrank/game-tutorial-stage-1-starter.git&install=deno+install&mode=dynamic&entrypoint=src/main.ts)

## Option 2: Using the finished code

If you prefer to see the completed code for each stage, you can deploy the
finished packages directly. This allows you to explore the final implementation
and understand how each part of the game works. The readme files in each stage
will provide insights into the code structure and functionality.

| Stage                                                                 | Focus                | What You'll Learn                              | Get started                                                                                                                                                                                      |
| --------------------------------------------------------------------- | -------------------- | ---------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **[Stage 1](https://github.com/thisisjofrank/game-tutorial-stage-1)** | Foundation & Setup   | Basic web server, static files, API endpoints  | [![Deploy on Deno](https://deno.com/button)](https://app.deno.com/new?clone=https://github.com/thisisjofrank/game-tutorial-stage-1.git&install=deno+install&mode=dynamic&entrypoint=src/main.ts) |
| **[Stage 2](https://github.com/thisisjofrank/game-tutorial-stage-2)** | Enhanced Features    | Canvas setup, drawing shapes, handling input   | [![Deploy on Deno](https://deno.com/button)](https://app.deno.com/new?clone=https://github.com/thisisjofrank/game-tutorial-stage-2.git&install=deno+install&mode=dynamic&entrypoint=src/main.ts) |
| **[Stage 3](https://github.com/thisisjofrank/game-tutorial-stage-3)** | Advanced Gameplay    | Game logic, score tracking, advanced mechanics | [![Deploy on Deno](https://deno.com/button)](https://app.deno.com/new?clone=https://github.com/thisisjofrank/game-tutorial-stage-3.git&install=deno+install&mode=dynamic&entrypoint=src/main.ts) |
| **[Stage 4](https://github.com/thisisjofrank/game-tutorial-stage-4)** | Database Integration | PostgreSQL, leaderboards, user customization   | [![Deploy on Deno](https://deno.com/button)](https://app.deno.com/new?clone=https://github.com/thisisjofrank/game-tutorial-stage-4.git&install=deno+install&mode=dynamic&entrypoint=src/main.ts) |

## Option 3: Running the stages from this monorepo

If you'd rather clone this repo and see all the code in one place, you can run
the stages directly from this monorepo. Each stage is organized as a submodule,
allowing you to work on them independently while sharing the same workspace
configuration.

```bash
git clone --recurse-submodules
cd game
```

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

# Tutorial Stages

## Stage 1: Foundation & Setup

- Basic web server setup with Oak
- Static file serving
- Simple API endpoints
- Health checks

## Stage 2: Enhanced Features

- Environment configuration
- Improved error handling
- Extended API functionality

## Stage 3: Advanced Gameplay

- Game logic implementation
- Score tracking
- Advanced game mechanics

## Stage 4: Database Integration & Global Leaderboards

- PostgreSQL database integration
- User customization features
- Global leaderboard system
- Data persistence

## Dependencies

- **@oak/oak**: Web framework for Deno
- **pg**: PostgreSQL client (Stage 4 only)

All dependencies are managed at the workspace level in the root `deno.json`.

## Working with Submodules

This repository uses git submodules to organize each tutorial stage. Here are
some useful commands:

### Updating all submodules to latest

```bash
git submodule update --remote
```

_Or if you have local changes to preserve:_

```bash
git submodule foreach --recursive 'git fetch origin && git reset --hard origin/main || echo "Could not reset $name"'
git add .
git commit -m "Update all submodules to latest versions"
```

### Updating a specific submodule

```bash
git submodule update --remote packages/stage-1
```

### If you cloned without `--recursive`

```bash
git submodule update --init --recursive
```

### Checking submodule status

```bash
git submodule status
```

Each stage is maintained in its own repository, allowing for independent
development and version control while keeping the tutorial organized in a single
place.

## Development

Each stage can be developed independently while sharing the workspace
configuration. The stages are designed to be educational, showing progressive
enhancement of the game from basic setup to full database integration.
