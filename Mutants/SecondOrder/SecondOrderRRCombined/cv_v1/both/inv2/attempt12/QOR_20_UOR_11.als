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
source: (lone Source)
}
pred inv2[] {
(all u: (one User) {
(all w: (one Work) {
(((u->w) in profile) => ((Institution in (w.source)) || (User in (w.source))))
})
})
}