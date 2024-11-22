module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all a: (one Node),b: (one Node) {
(b !in (a.(^adj)))
})
}