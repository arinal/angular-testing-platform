# online-test-client

This project is a client consumer for [online-testing-platform](https://github.com/arinal/online-testing-platform) backend server.

This project is generated with [yo angular generator](https://github.com/yeoman/generator-angular)
version 0.11.1.

## Build & development

Make sure you have [nodejs](https://nodejs.org) installed. Refer to this [site](https://nodejs.org) about the installation details.
Make the backend server up and running is mandatory before starting this project. Please visit [online-testing-platform](https://github.com/arinal/online-testing-platform) for further information.

Afterwards, follow these steps

1. Download & install all the required node components by typing `npm install`.
2. Download client library dependencies by typing `bower install`.
3. Run `grunt serve` will start the server. Fire your browser and hit `localhost:9000` to see it in action. You can use `aelsu` and `aelsup` username password pair to login.

> *TODO: executing steps below will fail because this project hasn't implemented unit testing yet. Please put extra `--force`*

4. Executing `grunt` will compile the project and put all the nicely bundled and minified files to `dist` folder. 
5. Executing `grunt serve:dist` will run the compiled project.
