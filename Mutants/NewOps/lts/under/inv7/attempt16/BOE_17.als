module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ x,y: (one State) {
(some e: (one Event) {
(trans in (x->(e->y)))
})
} }) {
((some (Init.(^adj))) => (some (((Init.(*adj)).(^adj)) & Init)))
})
}





