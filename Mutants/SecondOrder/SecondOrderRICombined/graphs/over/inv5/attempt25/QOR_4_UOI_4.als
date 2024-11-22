module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(no n: (one Node) {
(no (n.((~adj).(~adj))))
})
}