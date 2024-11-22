module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(all s: (State - Init) {
((#(s.trans)) >= 1)
})
}





