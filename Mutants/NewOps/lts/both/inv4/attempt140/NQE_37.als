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
((x->(e->y)) in trans)
})
} }) {
(one e: (one Init) {
(all u: (one State) {
(e in (u.(^t)))
})
})
})
}





