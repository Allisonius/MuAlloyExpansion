module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.(*({ x: (one State),y: (one State) {
(some e: (one Event) {
((e.(x.trans)) = y)
})
} }))) !in State)
}





