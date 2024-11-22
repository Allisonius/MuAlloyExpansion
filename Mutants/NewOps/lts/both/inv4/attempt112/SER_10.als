module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (one Event) {
((some trans) => ((some Init) && (no ((State - Init) - (Event.(^(i.trans)))))))
})
}





