module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one v: (one Node) {
(no ((v.(~adj)) + v))
})
}