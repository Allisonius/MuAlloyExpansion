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
((x->(z->y)) = trans)
})
} }) {
(State in (Init.(^t)))
})
}





