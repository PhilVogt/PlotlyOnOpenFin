% Auto-generated: do not edit by hand
\name{''OpenfinContextPublisher}

\alias{''OpenfinContextPublisher}

\title{OpenfinContextPublisher component}

\description{
ExampleComponent is an example component. It takes a property, `label`, and displays it. It renders an input with the property `value` which is editable by the user.
}

\usage{
''OpenfinContextPublisher(id=NULL, contextTopic=NULL, items=NULL, selectedItem=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{contextTopic}{Character. The value for the OpenFin topic to publish values onto.}

\item{items}{Unnamed list. The items to render in the dropdown. When the selection is changed, the selected
value will be published on the OpenFin Application bus, on the contextTopic to all 
subscribers.}

\item{selectedItem}{Character. The value passed back out when selection changes.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

