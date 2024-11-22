module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (lone Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv2[] {
(all u: (one User) {
(some w: (one Work) {
((profile in (u->w)) => (((w.source) in Institution) || ((w.source) in User)))
})
})
}