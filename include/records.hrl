-ifndef(nitrogen_fa_include).
-define(nitrogen_fa_include, 1).

-record(fa, {?ELEMENT_BASE(element_fa),
             text=""                 :: text(),
             body=" "                :: body(),
             fa                      :: text() | atom(), % Font awesome icon
             size=""                 :: text() | atom(),
             fw=false                :: boolean()    %% fixed-width
        }).

-endif.
