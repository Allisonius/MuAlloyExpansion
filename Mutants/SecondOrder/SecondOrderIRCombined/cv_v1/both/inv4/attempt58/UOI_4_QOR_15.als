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
pred inv4[] {
(one u: (one User),i: (one Id),w: (one Work) {
(always ((lone ((u.visible) & (ids.i))) && (lone (visible.(ids.i)))))
})
}