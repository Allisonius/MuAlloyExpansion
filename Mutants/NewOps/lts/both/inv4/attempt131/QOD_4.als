module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let adj = ({ x,y: (one State) {
((x->(((Event))->y)) in trans)
} }) {
(some i: (one Init) {
(State in (i.(*adj)))
})
})
}





