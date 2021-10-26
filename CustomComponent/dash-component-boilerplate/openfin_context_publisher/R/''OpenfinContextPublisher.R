# AUTO GENERATED FILE - DO NOT EDIT

''OpenfinContextPublisher <- function(id=NULL, contextTopic=NULL, items=NULL, selectedItem=NULL) {
    
    props <- list(id=id, contextTopic=contextTopic, items=items, selectedItem=selectedItem)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'OpenfinContextPublisher',
        namespace = 'openfin_context_publisher',
        propNames = c('id', 'contextTopic', 'items', 'selectedItem'),
        package = 'openfinContextPublisher'
        )

    structure(component, class = c('dash_component', 'list'))
}
