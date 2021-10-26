import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { OpenfinContextPublisher as RealComponent } from '../LazyLoader';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class OpenfinContextPublisher extends Component {
    render() {
        return (
            <React.Suspense fallback={null}>
                <RealComponent {...this.props} />
            </React.Suspense>
        );
    }
}

OpenfinContextPublisher.defaultProps = {};

OpenfinContextPublisher.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * The value for the OpenFin topic to publish values onto.
     */
    contextTopic: PropTypes.string.isRequired,

    /**
     * The value passed back out when selection changes.
     */
    selectedItem: PropTypes.string,

    /**
     * The items to render in the dropdown. When the selection is changed, the selected
     * value will be published on the OpenFin Application bus, on the contextTopic to all 
     * subscribers. 
     */
    items: PropTypes.array.isRequired,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};


export const defaultProps = OpenfinContextPublisher.defaultProps;
export const propTypes = OpenfinContextPublisher.propTypes;