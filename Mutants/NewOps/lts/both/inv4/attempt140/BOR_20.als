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
((x->(e->y)) != trans)
})
} }) {
(all u: (one State) {
(one e: (one Init) {
(e in (u.(^t)))
})
})
})
}





