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
((x->(e->y)) in trans)
})
} }) {
((some ((Init.(^adj)) - Init)) => (some (((Init.(^adj)).(*adj)) & Init)))
})
}





