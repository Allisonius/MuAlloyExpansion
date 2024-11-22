module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(some var123456 : State { (Init in (var123456.(^({ x,y: (one var123456) {
(some ((x.trans).y))
} }))))})
}





