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
pred inv3[] {
(all w1,w2: (one Work),u: (one User) {
(((w1 in (u.profile)) && ((u.profile) in w2)) => (((w1.ids) !in (w2.ids)) && ((w2.ids) !in (w1.ids))))
})
}