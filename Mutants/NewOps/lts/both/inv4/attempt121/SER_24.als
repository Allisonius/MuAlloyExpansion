module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (one Init),s: (one State) {
(s in (i.(*({ s1,s2: (one Event) {
((s1->(Event->s2)) in trans)
} }))))
})
}





