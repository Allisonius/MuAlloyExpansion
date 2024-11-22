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
(one w: (one Work),u: (one User) {
((w in (u.profile)) => (u in (w.ids)))
})
}