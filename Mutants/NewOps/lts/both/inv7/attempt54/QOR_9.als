module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(let t = ({ x,y: (one State) {
(lone z: (one Event) {
((x->(z->y)) in trans)
})
} }) {
(all s: (one State) {
(Init in (s.(~t)))
})
})
}





