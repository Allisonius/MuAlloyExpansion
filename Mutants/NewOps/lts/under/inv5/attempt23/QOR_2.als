module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(lone x,y: (one State) {
((some (x->Event)) => (some (y->Event)))
})
}





