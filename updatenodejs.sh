SECONDS=0
echo removing a bunch of old files:
rm latest* && echo the file I get the version from latest
rm node-* && echo nodejs zipped folder
sudo rm /usr/local/bin/node && echo node executable
sudo rm /usr/local/bin/npm && echo npm executable
sudo rm /usr/local/bin/npx && echo npx executable
sudo rm /usr/local/bin/corepack && echo corepack executable
sudo rm -r /usr/local/bin/node-linux && echo node-linux folder
wget nodejs.org/dist/latest && echo getting a new latest version file
wget https://nodejs.org/dist/latest/$(grep "linux-x64.tar.gz" latest | tr ">" "\n" | grep "/a" | tr "<" "\n" | grep "linux-x64.tar.gz")
tar -xvf *linux-x64.tar.gz
sudo mv *linux-x64 /usr/local/bin && echo moved the extracted folder to /usr/local/bin
cd /usr/local/bin && echo cd to /usr/local/bin
sudo mv $(echo *-linux-x64*) node-linux && echo renaming the downloaded and unzipped folder to node-linux 
sudo mv node-linux/bin/node . && echo moved node executable to the correct place
sudo ln -s node-linux/lib/node_modules/npm/bin/npx-cli.js npx && echo did the same to npx
sudo ln -s node-linux/lib/node_modules/npm/bin/npm-cli.js npm && echo same to npm
sudo ln -s node-linux/lib/node_modules/corepack/dist/corepack.js corepack && echo same to corepack
echo finished
echo $SECONDS
