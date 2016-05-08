-module (element_fa).
-include_lib ("nitrogen_core/include/wf.hrl").
-include_lib ("../include/records.hrl").
-export([
    reflect/0,
    render_element/1
]). 
 
reflect() -> record_info(fields, fa).


-spec render_element(#fa{}) -> body().
render_element(Record = #fa{text = Text}) ->
    
    UniversalAttributes = [
    						{class, "fa fa-" ++ Record#fa.fa},
							{"aria-hidden", "true"}
						   ],
	
    case Body = Record#fa.body of
        [] -> 
            wf_tags:emit_tag(i, [
                {value, Text}
                | UniversalAttributes
            ]);
        _ ->
            wf_tags:emit_tag(i, [Body, Text], UniversalAttributes)
    end.
