module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no var123456 : Event { (State in (State.(trans.var123456)))})
}





