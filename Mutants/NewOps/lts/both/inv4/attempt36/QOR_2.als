module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no x: (one Event) {
(State in (Init.(*(trans.x))))
})
}





