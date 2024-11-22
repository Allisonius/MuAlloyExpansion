module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : Init { ((no var123456) => ((no State) && (all i: (one var123456) {
(some e: (one Event) {
(some ((e.(i.trans)) & State))
})
})))})
}





