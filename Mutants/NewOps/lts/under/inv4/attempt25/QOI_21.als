module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : State { ((no Init) => ((no var123456) && (all i: (one Init) {
((var123456 - Init) in (var123456.(~(i.trans))))
})))})
}





