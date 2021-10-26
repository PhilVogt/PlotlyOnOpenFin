import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { OpenfinContextSubscriber as RealComponent } from '../LazyLoader';

/**
 * ExampleComponent is an example component.
 * It takes a property, `label`, and
 * displays it.
 * It renders an input with the property `value`
 * which is editable by the user.
 */
export default class OpenfinContextSubscriber extends Component {
    render() {
        return (
            <React.Suspense fallback={null}>
                <RealComponent {...this.props} />
            </React.Suspense>
        );
    }
}

OpenfinContextSubscriber.defaultProps = {};

OpenfinContextSubscriber.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * The value for the OpenFin topic to publish values onto.
     */
    contextTopic: PropTypes.string.isRequired,

    /**
     * The context passed back out when the OpenFin subscription gets called back.
     */
    currentContext: PropTypes.string,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};


export const defaultProps = OpenfinContextSubscriber.defaultProps;
export const propTypes = OpenfinContextSubscriber.propTypes;