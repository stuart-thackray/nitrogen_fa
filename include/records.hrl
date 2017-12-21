-ifndef(nitrogen_fa_include).
-define(nitrogen_fa_include, 1).

-record(fa, {?ELEMENT_BASE(element_fa),
        text=""                 :: text(),
        body=" "                 :: body,
		fa 						:: text()		% Font awsume icon
		}).

-endif.
