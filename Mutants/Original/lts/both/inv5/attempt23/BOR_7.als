module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
((#(s1.trans)) < (#(s2.trans)))
})
}





