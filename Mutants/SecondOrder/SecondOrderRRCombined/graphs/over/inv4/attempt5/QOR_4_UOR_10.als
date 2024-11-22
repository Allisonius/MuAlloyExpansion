module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no v: (one Node) {
(lone ((v.(~adj)) + v))
})
}