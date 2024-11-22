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
pred inv4[] {
(all u: (one User),id: (one ((u.profile).ids)),w1,w2: (one Work) {
(((visible.ids) in ((w1->id) + (w2->id))) => (w1 = w2))
})
}