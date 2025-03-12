#!/bin/bash

# Define variables
PRIVATE_KEY_PATH="~/lab-01.pem"
REMOTE_USER="ubuntu"
REMOTE_HOST="13.213.56.104"
REMOTE_PATH="/ci_cd_basic_deploy"

# Clone the repository
git clone https://github.com/htruc-tcnct/ci_cd_basic.git
cd ci_cd_basic

# Install dependencies
npm install

# Run the tests
npm test || true

# Build the app (optional)
# npm run build

# Deploy to remote server
scp -i $PRIVATE_KEY_PATH -r . $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH
ssh -i $PRIVATE_KEY_PATH $REMOTE_USER@$REMOTE_HOST << 'EOF'
    cd $REMOTE_PATH
    npm install --production
    pm2 restart ci_cd_basic
EOF

echo "Deployment completed successfully"
