import { combineReducers } from 'redux';
import people from './people';

const rootReducer = combineReducers({
  people,
});

// {} initail store

// apps reducer
// {
// apps: [ {}, {}, {}, {}, {}]
//}

export default rootReducer;
