module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some i: (one Init) {
((some State) => (no ((State - Init) - (Event.(^(i.trans))))))
})
}





