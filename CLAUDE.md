# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Core Development
- `npm run dev` or `make dev` - Start Vite development server with HMR
- `npm run build` or `make build` - Build for production (TypeScript compilation + Vite build)
- `npm run lint` or `make lint` - Run ESLint on codebase
- `npm run preview` - Build and preview with Wrangler Pages locally

### Cloudflare Pages Deployment
- `npm run deploy` or `make deploy` - Build and deploy to Cloudflare Pages
- `npm run cf-typegen` - Generate Cloudflare Worker types

### Project Management
- `make install` - Install dependencies
- `make clean` - Remove node_modules, dist, and build directories
- `make help` - Show available make commands

## Architecture

This is a React portfolio website built with:
- **React 19** with TypeScript
- **Vite** for build tooling and development server
- **Cloudflare Pages** for hosting and deployment
- **Wrangler** for Cloudflare integration

### Project Structure
- `src/` - React application source code
  - `App.tsx` - Main application component (currently default Vite + React template)
  - `main.tsx` - Application entry point
  - `assets/` - Static assets (images, icons)
- `public/` - Public static files served directly
- `dist/` - Build output directory (configured for Cloudflare Pages)

### Configuration Files
- `vite.config.ts` - Vite configuration with React plugin
- `wrangler.jsonc` - Cloudflare Pages configuration
- `eslint.config.js` - ESLint with TypeScript, React Hooks, and React Refresh rules
- `tsconfig.json` - TypeScript project references configuration
- `Makefile` - Convenient command aliases

### TypeScript Setup
Uses project references with separate configs:
- `tsconfig.app.json` - Application code configuration
- `tsconfig.node.json` - Node.js tooling configuration
- `worker-configuration.d.ts` - Cloudflare Worker type definitions

### Linting
ESLint configured with:
- TypeScript support
- React Hooks rules
- React Refresh (HMR) rules
- Browser globals