module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(one s: (one State) {
((State.(~(s.trans))) in Event)
})
}





