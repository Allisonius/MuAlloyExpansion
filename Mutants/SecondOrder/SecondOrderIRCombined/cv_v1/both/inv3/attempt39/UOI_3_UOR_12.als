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
pred inv3[] {
(all w1,w2: (one Work),u: (one User) {
((once ((w1 in (u.profile)) && (w2 in (u.profile)))) => (((w1.ids) != (w2.ids)) || (w1 = w2)))
})
}