module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : State { ((no Init) => ((no var123456) && (all i: (one Init) {
(some e: (one Event) {
(some ((e.(i.trans)) & var123456))
})
})))})
}





