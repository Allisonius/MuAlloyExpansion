module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n: (one Node) {
(eventually ((Node in (n.(^adj))) || (Node in (n.(^(~adj))))))
})
}