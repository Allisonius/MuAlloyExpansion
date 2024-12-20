module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (some Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (set Source)
}
pred inv4[] {
(all u: (one User) {
(all w: (one (u.visible)) {
((w.ids) in ((u.visible).ids))
})
})
}