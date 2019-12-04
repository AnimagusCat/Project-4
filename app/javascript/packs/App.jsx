
import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import AutoText from '../components/AutoText'
import roads from '../components/roads'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <AutoText items={roads}/>,
    document.body.appendChild(document.createElement('div')),
  )
})