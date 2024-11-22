module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((some Init) && (some (State - Init)) && (all i: (one Event) {
(no ((State - Init) - (Event.(^(i.trans)))))
}))
}





