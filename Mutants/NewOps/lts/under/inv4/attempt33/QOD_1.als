module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((((State.trans).Event).(^({ y,x: (one State) {
(some ((x.trans).y))
} }))) = Init)
}





