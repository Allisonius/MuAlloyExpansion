module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
((State.(^({ x,y: (one State) {
(some ((x.trans).y))
} }))) in Init)
}





