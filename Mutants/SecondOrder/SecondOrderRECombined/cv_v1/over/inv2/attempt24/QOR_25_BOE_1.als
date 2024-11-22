module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv2[] {
(all u: (one User),w: (one Work) {
(lone i: (one Institution) {
((((w.source) = i) || ((w.source) = u)) => (w in (u.profile)))
})
})
}