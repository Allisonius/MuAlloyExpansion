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
ids: (lone Id),
source: (some Source)
}
pred inv2[] {
(all u: (one User),w: (one ((u.profile) + (u.visible))) {
(w in (u + Institution))
})
}