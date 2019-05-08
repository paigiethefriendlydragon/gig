import React, {Component} from 'react'
import MusicianTile from '../components/MusicianTile'

class MusicianShowContainer extends Component {
  constructor(props){
    super(props)
    this.state = {
      musician: {}
    }
  }
  componentDidMount(){
    fetch(`/api/v1/musicians/${this.props.params.id}`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
          let errorMessage = `${ response.status }(${ response.statusText })` ,
          error = new Error(errorMessage);
          throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({ musician: body })
    })

    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render(){
    return(
      <MusicianTile
      first_name={this.state.musician.first_name}
      last_name={this.state.musician.last_name}
      address={this.state.musician.address}
      city={this.state.musician.city}
      state={this.state.musician.state}
      zip={this.state.musician.zip}
      description={this.state.musician.description}
      />
    )
  }
}


export default MusicianShowContainer
