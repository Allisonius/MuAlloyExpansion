module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(no n: (one Node),x: (one Node) {
((n in (x.(^adj))) && (x in (n.(^adj))))
})
}