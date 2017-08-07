#!/bin/bash

echo "Enter the name of the Redux module you wish to create:"
read name

pathAction="./src/actions/${name}Actions.js"
touch $pathAction
echo "created: $pathAction"
# write information to actions file
cat > $pathAction <<- ROM
import {

} from './types';

export const xxxxxxxx = () => {
  return {
    type: xxxxxxxx,
    payload: xxxxxxxx
  };
};

export const xxxxxxxx = () => {
  return (dispatch) => {
    APICALL().then(() => {
      dispatch({ type: xxxxxxxx, payload: xxxxxxxx });
    });
  };
};
ROM

pathReducer="./src/reducers/${name}Reducer.js"
touch $pathReducer
echo "created: $pathReducer"
# write information to reducers file
cat > $pathReducer <<- RED
import {

} from '../actions/types';

const INITIAL_STATE = {

};

export default (state = INITIAL_STATE, action) => {
  switch (action.type) {
    case xxxxxxxx:
      return { ...state, [action.payload.prop]: action.payload.value };
    default:
      return state;
  }
};
RED

# write information to actions index file
pathActionsIndex="./src/actions/index.js"
cat >> $pathActionsIndex <<- EOM
export * from './${name}Actions';
EOM




# write information to reducers index file
pathReducerIndex="./src/reducers/index.js"
cat >> $pathReducerIndex <<- CVB


import ${name}Reducer from './${name}Reducer';
CVB
