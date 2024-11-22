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
source: (some Source)
}
pred inv2[] {
(lone w: (one Work),u: (one User) {
((w in (u.profile)) => (u in (w.source)))
})
}