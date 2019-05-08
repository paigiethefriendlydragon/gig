import React, { Component } from 'react'

const MusicianTile = (props) => {
  return(
    <div>
        <div id="name">
            <h2>{props.first_name} {props.last_name} </h2>
        </div>
        <div id="description">
          <p>{props.description}</p>
        </div>
    </div>
  )
}

export default MusicianTile
