module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let adj = ({ x,y: (one State) {
(all e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
((some (Init.(^adj))) => (some (((Init.(^adj)).(^adj)) & Init)))
})
}





