module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let t = ({ x: (one State),y: (one State) {
(some e: (one Event) {
(trans in (x->(e->y)))
})
} }) {
(all u: (one State) {
(Init in (u.(^t)))
})
})
}





