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
ids: (set Id),
source: (one Source)
}
pred inv2[] {
(all u: (one User),w: (one Work) {
((w in (one (u.profile))) && (one (w.source)))
})
}