module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(all s: (one Init) {
((#(s.trans)) >= 1)
})
}





