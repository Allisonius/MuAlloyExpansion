module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((((~adj).(^adj)) != iden) && ((adj.(~adj)) in iden))
}