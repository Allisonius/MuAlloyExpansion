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
ids: (set Id),
source: (some Source)
}
pred inv2[] {
(all u: (one User),w: (one Work) {
(((u->w) in profile) => (((u.source) in User) || ((u.source) in Institution)))
})
}