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
(lone u: (one User) {
(some w: (one Work) {
(((u->w) in profile) => ((User in (w.source)) || ((w.source) in Institution)))
})
})
}