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
source: (set Source)
}
pred inv2[] {
(all w: (one Work),u: (one User),i: (one Institution) {
(((u.profile) in w) => (((w.source) = u) || ((w.source) = i)))
})
}