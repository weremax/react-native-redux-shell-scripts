#!/bin/bash
npm install --save-dev eslint-config-rallycoding

npm install --save react-native-router-flux
npm install --save react-native-webview-bridge
npm install --save react-native-vector-icons
npm install --save react-redux redux redux-thunk

# mkdir
mkdir ./src
mkdir ./src/actions
touch ./src/actions/index.js
touch ./src/actions/types.js
mkdir ./src/reducers
touch ./src/reducers/index.js

mkdir ./src/components
mkdir ./src/components/common
mkdir ./src/components/images
mkdir ./src/components/libraries
mkdir ./src/components/private
mkdir ./src/components/public

touch ./src/App.js
touch ./src/Router.js

cat > ./src/App.js <<- EOM
import React, { Component } from 'react';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import ReduxThunk from 'redux-thunk';
import reducers from './reducers';
import Router from './Router';

class App extends Component {
  render() {
    const store = createStore(reducers, {}, applyMiddleware(ReduxThunk));
    return (
      <Provider store={store}>
        <Router />
      </Provider>
    );
  }
}

export default App;
EOM

cat > ./.eslintrc <<- ROM
{
  "extends": "rallycoding",
  "rules": {
    "arrow-body-style": 0,
    "global-require": 0
  }
}
ROM

cat > ./src/reducers/index.js <<- CVB
import { combineReducers } from 'redux';
export default combineReducers({

});
CVB
