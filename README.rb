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
--- routes/app.js--------
var express = require('express');
var router = express.Router();
router.get('/', function (req, res, next) {
    res.render('index');
});
router.get('/message/:msg', function(req, res, next ) {
    res.render('node', {message: req.params.msg});
});
router.post('/message', function (req, res, next) {
    var message = req.body.message;
    res.redirect('/message/'+message);
});
module.exports = router;
----------- views/node.hbs ----
<h1>A NodeJS view</h1>
{{ message }}
<form action="/message" method="post">
    <input type="text" name="message">
    <button type="submit">Submit</button>
</form>
===============第 2 節，講座 14=======================
This Course if of course not mainly about NodeJS. So if you want to dive 
deeper into it, the following Resources should be helpful.
#1: Official NodeJS Page (also dive into the Docs there!): 
    https://nodejs.org/en/
#2: An Absolute Beginner Guide to NodeJS: 
    http://blog.modulus.io/absolute-beginners-guide-to-nodejs
#3: Official ExpressJS Page (check out the "Getting Started" and other Guide there!): 
    http://expressjs.com/
#4: Creating a Basic NodeJS + ExpressJS App from Scratch: 
    https://shapeshed.com/creating-a-basic-site-with-node-and-express/
============================= 16: Setting up MongoDB =======================
https://www.mongodb.com
https://community.c9.io/t/setting-up-mongodb/1717
Installing MongoDB on a Cloud9 workspace
To install MongoDB in your workspace, you can open a terminal and run the following command:
--------1--------------
sudo apt-get install -y mongodb-org
Running MongoDB on a Cloud9 workspace
MongoDB is preinstalled in your workspace. To run MongoDB, run the following below (passing the correct parameters to it). Mongodb data will be stored in the folder data.
---------2-------------
$ mkdir data
$ echo 'mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"' > mongod
$ chmod a+x mongod
You can start mongodb by running the mongod script on your project root:
$ ./mongod
---------explain ---------
MongoDB parameters used:
--dbpath=data - Because it defaults to /var/db (which isn't accessible)
--nojournal - Because mongodb usually pre-allocates 2 GB journal file (which exceeds Cloud9 disk space quota)
--bind_ip=$IP - Because you can't bind to 0.0.0.0
--rest - Runs on default port 28017
You should use the host $IP instead of localhost as your driver connection URL. For example, in Node, it is: process.env.IP
Shell Access
To access a shell prompt for the above MongoDB run the following.
$ mongo
--------------do it ---------------
timchen7:~/seed-project (master) $ sudo apt-get install -y mongodb-org
timchen7:~/seed-project (master) $ mkdir data
timchen7:~/seed-project (master) $ echo 'mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"' > mongod
timchen7:~/seed-project (master) $ ls
README.rb  assets/  data/   node_modules/  public/  tsconfig.aot.json  views/                    webpack.config.dev.js
app.js     bin/     mongod  package.json   routes/  tsconfig.json      webpack.config.common.js  webpack.config.prod.js
timchen7:~/seed-project (master) $ cat mongod
mongod --bind_ip=$IP --dbpath=data --nojournal --rest "$@"
timchen7:~/seed-project (master) $ chmod a+x mongod
=============== 17: Start up MongoDB server 'mongod' =============
timchen7:~/seed-project (master) $ ./mongod  
2017-04-14T00:09:24.766+0000 [initandlisten] MongoDB starting : pid=1617 port=27017 dbpath=data 64-bit host=timchen7-node2-4719994
2017-04-14T00:09:24.767+0000 [initandlisten] options: { net: { bindIp: "0.0.0.0", http: { RESTInterfaceEnabled: true, enabled: true } }, storage: { dbPath: "data", journal: { enabled: false } } }
================== Using the MongoDB Shell Client 'mongo'=============
open another terminal
timchen7:~/seed-project (master) $ mongo
MongoDB shell version: 2.6.12
connecting to: test
Welcome to the MongoDB shell.
2017-04-14T00:09:24.762+0000 **          enabling http interface
> use node-angular
switched to db node-angular
> show collections
=== 9. Using Mongoose to work with Data and Models ====
(Mongoose is advanced mongo DB client framework/package 
between NodeJS app and MongoDB, to handle 
schemas,models,validation,intuitive Database Operations)
============= 20. Using Mongoose in NodeJS =========
timchen7:~/seed-project (master) $ npm install --save mongoose
mongoose will be added in package.json
   "mongoose": "^4.9.4",
add "var mongoose = require('mongoose');" and 
"mongoose.connect('http://node2-timchen7.c9users.io:27017/node-angular');" into app.js
port 27017 is found out from after running ./mongod above, as following
2017-04-14T00:09:24.766+0000 [initandlisten] MongoDB starting : pid=1617 port=27017 dbpath=data 64-bit host=timchen7-node2-4719994
=============21. Creating the Project Models with Mongoose================
1.create message.js and users.js model in new created 'models' folder 
2.timchen7:~/seed-project (master) $ npm install --save mongoose-unique-validator
(   "mongoose-unique-validator": "^1.0.5", will be added to package.json )
3. add "var mongooseUniqueValidator = require('mongoose-Unique-Validator');" and 
       "schema.plugin(mongooseUniqueValidator);" to user.js model
============== 22. Storing Data in the Database ====================
restart server: ^C
timchen7:~/seed-project (master) $ npm start --host 0.0.0.0 --port 8080 --live-reload-port 8081
   at tryModuleLoad (module.js:447:12)
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! udemy-nodejs-angular2@1.0.0 start: `node ./bin/www "0.0.0.0" "8080" "8081"`
npm ERR! Exit status 1
npm ERR! 
npm ERR! Failed at the udemy-nodejs-angular2@1.0.0 start script 'node ./bin/www "0.0.0.0" "8080" "8081"'.