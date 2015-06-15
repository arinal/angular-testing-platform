# online-test-client

This project is a client consumer for [online-testing-platform](https://github.com/arinal/online-testing-platform) which built using Spring.

This project is generated with [yo angular generator](https://github.com/yeoman/generator-angular)
version 0.11.1.

## Build & development

Make sure you have [nodejs](https://nodejs.org) installed. Refer to the [site](https://nodejs.org) about installation details.
You must start the backend server before starting the client side server. Please visit [online-testing-platform](https://github.com/arinal/online-testing-platform) for further information about getting and running the backend server.

Afterwards, follow these steps:
1. Download & install all the required node components by typing `npm install`.
2. Download library dependency by typing `bower install`.
3. Run `grunt serve` will run the server. Browse to 'localhost:9000' to see it in action. Login with 'aelsu' and 'aelsup' username and password.
4. Executing `grunt` will compile the project and put all the nicely bundled and minified files to `dist` folder.
5. Executing `grunt serve:dist` will run the compiled project.
