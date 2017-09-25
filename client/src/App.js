import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';
import Home from './components/Home';
import ProtectedRoute from './component/ProtectedRoute';
import GrabPeople from './component/GrabPeople';
import NoMatch from './component/NoMatch';

const App = () => (
  <Switch>
    <ProtectedRoute exact path='/' component={Home}  />
    <Route path='/apps' component={GrabPeople} />
    <Route component={NoMatch}  />
  </Switch>
)

export default App;
