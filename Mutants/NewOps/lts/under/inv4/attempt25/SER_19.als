module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((no Init) => ((no Event) && (all i: (one Init) {
((State - Init) in (State.(~(i.trans))))
})))
}





