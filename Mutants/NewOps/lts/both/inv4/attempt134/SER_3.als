module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let t = ({ x: (one Event),y: (one State) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
(all u: (one Init) {
(State in (u.(^t)))
})
})
}





