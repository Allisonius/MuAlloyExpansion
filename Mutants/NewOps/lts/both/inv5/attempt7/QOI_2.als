module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no var123456 : Event { (var123456 in (State.(trans.State)))})
}





