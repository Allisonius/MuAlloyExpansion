module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj x,y: (one State),disj e: (one Event) {
((x->(e->y)) in trans)
})
}





