module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all a: (one Node),b: (one Node) {
(b != (a.(*adj)))
})
}