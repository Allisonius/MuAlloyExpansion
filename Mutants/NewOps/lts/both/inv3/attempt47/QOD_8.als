module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
((((((State))->((Event))) in (trans.State)) && ((((State))->((Event))) in (trans.State))) => (((Event)) = ((Event))))
}





