module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : State { (let t = ({ x: (one var123456),y: (one var123456) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }) {
(some e: (one Init) {
(var123456 in (e.(^t)))
})
})})
}





