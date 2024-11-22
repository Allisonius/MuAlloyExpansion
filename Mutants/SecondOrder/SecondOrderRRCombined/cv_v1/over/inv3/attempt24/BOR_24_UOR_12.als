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
(all u: (one User),w1,w2: (one (u.profile)) {
(((w1.ids) = (w2.ids)) && ((w2.ids) !in (w1.ids)))
})
}