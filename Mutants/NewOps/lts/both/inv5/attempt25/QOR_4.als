module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(one s1,s2: (one State) {
((s1.(~(s1.trans))) = (s2.(~(s2.trans))))
})
}





