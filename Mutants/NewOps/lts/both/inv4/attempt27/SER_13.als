module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all e: (one Event) {
(Init in (e.(^(Init.trans))))
})
}





