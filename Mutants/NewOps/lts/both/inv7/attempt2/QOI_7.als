module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all var123456 : Event { (Init = ((trans.State).var123456))})
}





