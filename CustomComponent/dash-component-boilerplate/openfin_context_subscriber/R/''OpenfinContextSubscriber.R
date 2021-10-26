# AUTO GENERATED FILE - DO NOT EDIT

''OpenfinContextSubscriber <- function(id=NULL, contextTopic=NULL, currentContext=NULL) {
    
    props <- list(id=id, contextTopic=contextTopic, currentContext=currentContext)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'OpenfinContextSubscriber',
        namespace = 'openfin_context_subscriber',
        propNames = c('id', 'contextTopic', 'currentContext'),
        package = 'openfinContextSubscriber'
        )

    structure(component, class = c('dash_component', 'list'))
}
