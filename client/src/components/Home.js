import React from 'react';
import { Link } from 'react-router-dom';
import { Header } from 'semantic-ui-react';

const Home = () => (
  <div>
    <Header textAlign='center' as='h3'>
      Welcome To My Space.
    </Header>
    <Link to='/people'>See Friends</Link>
  </div>
)

export default Home;
