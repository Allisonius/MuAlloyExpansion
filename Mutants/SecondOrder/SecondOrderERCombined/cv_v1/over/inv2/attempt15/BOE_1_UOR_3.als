module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (some Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv2[] {
(all u: (one User),w: (one ((u.profile) + (u.visible))) {
((u + Institution) in w)
})
}