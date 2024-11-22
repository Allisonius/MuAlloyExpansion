module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a,b: (one Node) {
(b = (a.(^adj)))
})
}





