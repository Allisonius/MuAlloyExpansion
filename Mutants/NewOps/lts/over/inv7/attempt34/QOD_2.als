module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(((((State))->(((Event))->((State)))) in trans) => (((((State))->(((Event))->((State)))) in trans) && (((State)) in (((Event)).(((State)).trans)))))
}





