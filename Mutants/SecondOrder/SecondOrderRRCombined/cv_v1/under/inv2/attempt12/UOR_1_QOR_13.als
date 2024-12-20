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
(no w: (one Work),u: (one User) {
(((u->w) in profile) => (lone (((w.source) :> u) + ((w.source) :> Institution))))
})
}