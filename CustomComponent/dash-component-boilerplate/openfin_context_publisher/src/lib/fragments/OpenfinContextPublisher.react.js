import React, { Component } from 'react';
import { defaultProps, propTypes } from '../components/OpenfinContextPublisher.react';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class OpenfinContextPublisher extends Component {
    constructor(props) {
        super(props);
        this.onChange = this.onChange.bind(this);
        this.renderOptions = this.renderOptions.bind(this);
    }

    onChange(e) {
        const localValue = e.target.value;
        this.props.setProps({ selectedItem: localValue });

        if (fin !== undefined) {
            fin.InterApplicationBus.publish(this.props.contextTopic, {payload: localValue});
        }
    }

    renderOptions(items) {
        return items.map(i => {
            return <option key={i}>
                {i}
            </option>
        });
    }

    render() {
        const { id, contextTopic, selectedItem, items } = this.props;

        return (
            <div id={id} style={{ display: "flex", flexDirection: "column" }}>
                <div>Context Topic: "{contextTopic}"</div>
                <div>Selected Item: "{selectedItem}"</div>
                <select onChange={(this.onChange)}>
                    {this.renderOptions(items)}
                </select>
            </div>
        );
    }
}


OpenfinContextPublisher.defaultProps = defaultProps;
OpenfinContextPublisher.propTypes = propTypes;