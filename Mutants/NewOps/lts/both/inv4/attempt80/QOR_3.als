module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(lone s: (one State),i: (one Init),e: (one Event) {
(s in ((i.trans).e))
})
}





