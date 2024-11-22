module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(((((State)) in Init) && (((State)) in Init)) => (((State)) = ((State))))
}





