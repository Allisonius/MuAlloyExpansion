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
(all u: (one User) {
(some w: (one Work) {
(((u->w) in profile) => (always ((Institution in (w.source)) || (User in (w.source)))))
})
})
}