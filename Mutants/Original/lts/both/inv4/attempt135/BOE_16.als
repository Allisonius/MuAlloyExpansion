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
(all u: (one Init) {
((u.(*t)) in State)
})
})
}





