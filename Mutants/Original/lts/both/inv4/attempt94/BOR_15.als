module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((some Init) && (all i: (one Init) {
(no ((State - Init) & (Event.(^(i.trans)))))
}))
}





