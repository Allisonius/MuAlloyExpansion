module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
((((((State))->(((Event))->((State)))) in trans) => ((((State))->(((Event))->((State)))) in trans)) && (all s: (one State),e1,e2: (one Event) {
(((s->(e1->s)) in trans) => ((s->(e2->s)) in trans))
}))
}





