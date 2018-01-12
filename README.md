# react-native-redux-shell-scripts
These are some scripts for use with React Native and Redux to help set things up faster.
These files should be placed in the root of the React Native project where your package.json file resides.

### installer.sh
This script installs the following modules.
* eslint-config-rallycoding
* react-native-router-flux
* react-native-vector-icons
* react-redux
* redux
* redux-thunk

Creates the following directory structure
* src
  * actions
    * index.js
    * types.js
  * components
    * common
    * images
    * libraries
    * private
    * public
  * reducers
    * index.js
  * App.js
  * Router.js

### create_redux.sh
Files will be written to the following locations
* src/actions/
* src/reducers/

The following files will be appended to
* src/actions/index.js
* src/actions/types.js
* src/reducers/index.js
