module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no var123456 : Event { (Init in (var123456.(^(Init.trans))))})
}





