module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all x: (one Init) {
(((x.trans).Event) in State)
})
}





