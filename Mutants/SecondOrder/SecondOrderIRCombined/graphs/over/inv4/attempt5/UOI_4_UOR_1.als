module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all v: (one Node) {
(no ((v.(~(*adj))) + v))
})
}