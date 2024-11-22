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
pred inv1[] {
(all w: (one Work),u: (one User) {
((w != (u.visible)) => (u in (u.profile)))
})
}