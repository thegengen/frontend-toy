/* eslint-env jest */
import React from 'react'
import { render } from 'enzyme'

import MyApp from '../src/MyApp'

describe('A suite', () => {
  it('should render without throwing an error', () => {
    expect(render(<MyApp />).text()).toContain('Hello from')
  })
})
