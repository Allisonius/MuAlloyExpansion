module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(one x: (one Init),y: (one Event) {
(State in (y.(x.trans)))
})
}





