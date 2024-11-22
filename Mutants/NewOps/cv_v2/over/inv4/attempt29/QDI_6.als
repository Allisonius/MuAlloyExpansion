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
source: (one Source)
}
pred inv4[] {
(all u: (User - Source),x,y: (one Work) {
(((x in (u.visible)) && (y in (u.visible)) && ((x.source) = (y.source))) => (no ((x.ids) & (y.ids))))
})
}





