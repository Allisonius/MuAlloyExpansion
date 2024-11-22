module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n: (one Node) {
(Node in (some (n.((*adj) + (*(~adj))))))
})
}