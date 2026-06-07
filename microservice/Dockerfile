FROM python:3.13-slim as base

########################
# Install Dependencies #
########################

# Install curl for healthchecks
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Copy requirements.txt to container
COPY requirements.txt /tmp/requirements.txt

# Upgrade pip and install Python requirements
# Use --no-cache-dir to reduce image size
RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r /tmp/requirements.txt


###########
# Workdir #
###########

# Set workdir to app
WORKDIR /usr/src/app
ENV PYTHONPATH="${PYTHONPATH}:/usr/src/app"


##############################
# Define Default Dev Command #
##############################

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "5173"]


FROM base AS production

#############
# Copy Data #
#############

# Copy app to container
COPY ./src /usr/src/app


##################################
# Pre-download Embedding Model   #
##################################

# Pre-download sentence-transformers model to avoid first-request delay
# This downloads ~80MB model at build time (cached in image)
RUN python3 -c "from sentence_transformers import SentenceTransformer; SentenceTransformer('all-MiniLM-L6-v2')" || \
    echo "Warning: Could not pre-download model, will download on first use"


##########
# Verify #
##########

# Check content of app folder
RUN ls -la /usr/src/app


#####################################
# Define Default Production Command #
#####################################

# Start FastAPI server with Uvicorn in production mode on port 5173
# Use 4 workers for better performance (adjust based on CPU cores)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5173", "--workers", "1"]
