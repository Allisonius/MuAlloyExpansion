module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let t = ({ x,y: (one State) {
(some z: (one Event) {
((x->(z->y)) in trans)
})
} }) {
((some (*t)) => (some ((^t).Init)))
})
}





