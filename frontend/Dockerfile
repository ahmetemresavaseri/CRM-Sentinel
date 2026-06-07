FROM node:25-alpine AS deps

# Set working directory
WORKDIR /app

# Copy package files only
COPY ./nextjs/package.json ./nextjs/yarn.lock ./

# Install dependencies with production optimizations
RUN yarn install --frozen-lockfile --production=false


# Build stage
FROM node:25-alpine AS builder

WORKDIR /app

# Copy dependencies from deps stage
COPY --from=deps /app/node_modules ./node_modules

# Copy app source
COPY ./nextjs .

# Build the app
RUN yarn run build


# Production stage - minimal runtime image
FROM node:25-alpine AS production

WORKDIR /app

# Set NODE_ENV
ENV NODE_ENV=production

# Copy package files
COPY ./nextjs/package.json ./nextjs/yarn.lock ./

# Install only production dependencies
RUN yarn install --frozen-lockfile --production=true && \
    yarn cache clean

# Copy built app from builder
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public

# Expose port
EXPOSE 3000

# Start production server
CMD ["yarn", "start"]
