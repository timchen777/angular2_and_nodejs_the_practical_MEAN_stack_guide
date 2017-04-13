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
-------------------------------- GITHUB --------------------------------
$ git init
$ git config --global user.name ".."
$ git config --global user.email ".."
$ git config --global credential.helper store
$ git add .
$ git commit -m "6. Setup seed-project: Hello world!"
$ git remote add origin https://github.com/timchen777/angular2_and_nodejs_the_practical_MEAN_stack_guide.git
$ git push -u origin master
============= 10. Working with Requests and Responses ====================
restart server: ^C
timchen7:~/seed-project (master) $ npm start --host 0.0.0.0 --port 8080 --live-reload-port 8081
browser:  http://node2-timchen7.c9users.io:8080/message  see==>
A NodeJS view
Hi nodejs
================ 11. Creating Routes and Passing Data ==================
restart server: ^C
timchen7:~/seed-project (master) $ npm start --host 0.0.0.0 --port 8080 --live-reload-port 8081
browser: http://node2-timchen7.c9users.io:8080/message/somthing  ==type 'something'===>see===>
A NodeJS view
somthing
===========  post form : input button ===========
http://node2-timchen7.c9users.io:8080/message/submitText
A NodeJS view
submitText 
           Submit <--- submit "submitText"