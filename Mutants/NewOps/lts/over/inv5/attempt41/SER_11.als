module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (one State),e: (one State) {
((e.(s1.trans)) = (e.(s2.trans)))
})
}





