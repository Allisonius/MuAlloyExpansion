module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((some var123456 : Init { (State in (var123456.(^(State->State))))}) || ((#State) = 1))
}





