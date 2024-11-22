module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((no Init) => ((no State) && (all i: (one Event) {
(some ((State - Init).(^(~(i.trans)))))
})))
}





