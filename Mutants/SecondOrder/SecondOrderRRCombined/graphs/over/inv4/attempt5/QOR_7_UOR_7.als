module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some v: (set Node) {
(no ((v.(~adj)) + v))
})
}