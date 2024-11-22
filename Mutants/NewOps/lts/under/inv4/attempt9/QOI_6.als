module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : Init { ((State.(Event.trans)) in (var123456.(*(Event.trans))))})
}





