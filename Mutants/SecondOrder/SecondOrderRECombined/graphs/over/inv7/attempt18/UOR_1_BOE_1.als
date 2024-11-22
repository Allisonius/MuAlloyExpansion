module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(all a: (one Node),b: (one Node) {
((a.(^adj)) in b)
})
}