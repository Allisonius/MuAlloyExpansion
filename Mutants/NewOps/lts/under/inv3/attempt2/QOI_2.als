module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(no var123456 : Event { ((var123456.(State.trans)) in State)})
}





