module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(one a: (one Node),b: (one Node) {
(b in (a.(^adj)))
})
}