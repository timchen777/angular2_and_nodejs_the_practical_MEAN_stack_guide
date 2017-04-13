======= REF: https://www.udemy.com/angular-2-and-nodejs-the-practical-guide/ ===
====== setup node =====
timchen7:~/workspace $ cd
timchen7:~ $ pwd
/home/ubuntu
timchen7:~ $ node -v
v4.7.3
timchen7:~ $ pwd
/home/ubuntu
timchen7:~ $ nvm install node   <================ update node =========
Downloading https://nodejs.org/dist/v7.9.0/node-v7.9.0-linux-x64.tar.xz...100.0%
Now using node v7.9.0 (npm v4.2.0)
timchen7:~ $ node -v
v7.9.0
timchen7:~ $ npm -v
4.2.0
timchen7:~ $ npm install -g npm  <================ update npm =========
/home/ubuntu/.nvm/versions/node/v7.9.0/bin/npm -> /home/ubuntu/.nvm/versions/node/v7.9.0/lib/node_modules/npm/bin/npm-cli.js
^C
timchen7:~ $ npm -v
4.5.0
===== 6. Setting up the Course Project ====
upload seed-project folder to Cloude 9 IDE
timchen7:~/seed-project (master) $ ls
README.rb  assets/  node_modules/  public/  tsconfig.aot.json  views/                    webpack.config.dev.js
app.js     bin/     package.json   routes/  tsconfig.json      webpack.config.common.js  webpack.config.prod.js
terminal-1:
$ npm install
$ npm run build (this will run forever)
terminal-2:
$ npm start --host 0.0.0.0 --port 8080 --live-reload-port 8081 ( this will start the server)
Browser http://node1-timchen7.c9users.io:8080/  see--> Hello World!