module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
((one (((Event)).(s1.trans))) => (one (((Event)).(s2.trans))) else (no (((Event)).(s1.trans))))
})
}





