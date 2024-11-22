module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((lone Init) => ((no State) && (all i: (one Init) {
(some ((State - Init).(^(~(i.trans)))))
})))
}





