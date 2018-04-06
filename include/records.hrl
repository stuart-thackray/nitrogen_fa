-ifndef(nitrogen_fa_include).
-define(nitrogen_fa_include, 1).

-record(fa, {?ELEMENT_BASE(element_fa),
            text=""                 :: text(),
            body=" "                 :: body,
            fa                      :: text(), % Font awesome icon
            size=""                 :: text(),
            fw=false                :: boolean()
        }).

-endif.
