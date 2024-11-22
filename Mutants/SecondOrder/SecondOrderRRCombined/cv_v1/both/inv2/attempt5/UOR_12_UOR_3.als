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
source: (some Source)
}
pred inv2[] {
(all w: (one Work),u: (one User),i: (one Institution) {
((w in (u.profile)) => (((w.source) = u) || ((w.source) = i)))
})
}