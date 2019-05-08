import React from 'react'
import { Router, browserHistory, Route, IndexRoute } from 'react-router';
import MusicianShowContainer from './MusicianShowContainer'

 const App = (props) => {
  return (

  <Router history={browserHistory}>
    <Route path='/gigs/:id' component={MusicianShowContainer} />
  </Router>
  )
}

export default App
