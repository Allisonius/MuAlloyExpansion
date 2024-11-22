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
(all u: (one User),w: (one Work),w1: (one Work) {
(((w1 in (u.profile)) && (w = (u.profile))) => ((w.ids) != (w1.ids)))
})
}