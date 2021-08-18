%% vim: ts=4 sw=4 et
-module (element_fa).
-include_lib ("nitrogen_core/include/wf.hrl").
-include("records.hrl").
-export([
    reflect/0,
    render_element/1
]). 
 
reflect() -> record_info(fields, fa).


-spec render_element(#fa{}) -> body().
render_element(_Record = #fa{text = Text,
                            body = Body,
                            class = Class0,
                            style = Style,
                            size = Size,
                            html_id = Htmlid,
                            title = Title,
                            fa = Icon,
                            fw = FixedWidth}) ->
   
    Class = [
        "fa fas fa-" ++ wf:to_list(Icon),
        ?WF_IF(Size, "fa-" ++ wf:to_list(Size)),
        ?WF_IF(FixedWidth, "fa-fw")
        | Class0
    ],

    UniversalAttributes = [
                            {class, Class},
                            {"aria-hidden", "true"},
                            {style, Style},
                            {title, Title},
                            {id, Htmlid}
                           ],
    
    wf_tags:emit_tag(i, [Body, Text], UniversalAttributes).
