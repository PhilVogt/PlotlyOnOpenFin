import React, { Component } from 'react';
import { defaultProps, propTypes } from '../components/OpenfinContextSubscriber.react';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class OpenfinContextSubscriber extends Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        if (fin) {
            // Note; the UUID could also be passed in as a prop here and default to * if nothing is passed in...
            fin.InterApplicationBus.subscribe({ uuid: "*" }, this.props.contextTopic, evt => {
                let { payload } = evt;
                this.props.setProps({ currentContext: payload });
            });
        }
    }

    render() {
        const { id, contextTopic, currentContext } = this.props;

        return (
            <div id={id} style={{ display: "flex", flexDirection: "column" }}>
                <div>Context Topic: "{contextTopic}"</div>
                <div>Current Context: "{currentContext}"</div>
            </div>
        );
    }
}


OpenfinContextSubscriber.defaultProps = defaultProps;
OpenfinContextSubscriber.propTypes = propTypes;