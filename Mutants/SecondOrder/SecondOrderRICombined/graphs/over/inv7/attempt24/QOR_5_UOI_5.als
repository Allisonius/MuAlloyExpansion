module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
(eventually ((Node in (n.(^adj))) && (iden in adj)))
})
}