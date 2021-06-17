import React from 'react'

const Event = props => (
  <div>
    <h2 className="event-title">{props.event.title}</h2>
    <div className="event-datetime">{props.event.datetime}</div>
    <div className="event-location">{props.event.location}</div>
  </div>
)

export default Event
