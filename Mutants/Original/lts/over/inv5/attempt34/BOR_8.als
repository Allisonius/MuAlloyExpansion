module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(!(some disj s1,s2: (one State) {
((s1.trans) in (s2.trans))
}))
}





