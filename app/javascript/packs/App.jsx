
import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import AutoText from '../components/AutoText'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <AutoText />,
    document.body.appendChild(document.createElement('div')),
  )
})