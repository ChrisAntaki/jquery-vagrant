# Clone jquery/jquery
git submodule update --init

# Switch to latest branch
cd jquery
git checkout master
git pull origin master

# Install dependencies
npm install

# Build jQuery
grunt

# Return to directory
cd -
