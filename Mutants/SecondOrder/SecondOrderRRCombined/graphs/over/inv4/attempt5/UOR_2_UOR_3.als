module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all v: (one Node) {
(no ((v.(~adj)) + v))
})
}