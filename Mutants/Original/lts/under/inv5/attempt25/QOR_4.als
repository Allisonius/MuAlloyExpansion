module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some s1,s2: (one State) {
((State.(s1.trans)) = (State.(s2.trans)))
})
}





