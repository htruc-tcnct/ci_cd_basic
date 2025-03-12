#!/bin/bash

#Clone the repository
git clone https://github.com/htruc-tcnct/ci_cd_basic.git
cd ci_cd_basic

# Install dependencies
npm install

#Run the tests
npm test

#Build the app
npm run build

#Deploy to remote server
scp -r user@localhost:/path/to/deploy
ssh user@localhost << 'EOF'
    cd /path/to/deploy
    npm install --production
    pm2 restart ci_cd_basic
EOF

echo "Deployment completed successfully"
