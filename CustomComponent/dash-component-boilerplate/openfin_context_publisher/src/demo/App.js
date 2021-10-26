/* eslint no-magic-numbers: 0 */
import React, { Component } from 'react';

import { OpenfinContextPublisher } from '../lib';

class App extends Component {

    constructor() {
        super();
        this.state = {
            selectedItem: ''
        };
        this.setProps = this.setProps.bind(this);
    }

    setProps(newProps) {
        this.setState(newProps);
    }

    render() {
        return (
            <div>
                <OpenfinContextPublisher
                    setProps={this.setProps}
                    {...this.state}
                />
            </div>
        )
    }
}

export default App;
