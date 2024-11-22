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
pred inv4[] {
(all u: (one User) {
(all w1,w2: (one Work) {
(((w1 + w2) != (u.visible)) => (w1 != w2))
})
})
}