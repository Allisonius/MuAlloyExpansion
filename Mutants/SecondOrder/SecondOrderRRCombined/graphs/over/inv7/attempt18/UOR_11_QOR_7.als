module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some a: (one Node),b: (set Node) {
(b in (a.(^adj)))
})
}