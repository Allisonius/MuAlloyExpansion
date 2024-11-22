module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (one State) {
(((some (((Event)).(s1.trans))) && (some (((Event)).(s2.trans)))) => (((Event)) = ((Event))))
})
}





