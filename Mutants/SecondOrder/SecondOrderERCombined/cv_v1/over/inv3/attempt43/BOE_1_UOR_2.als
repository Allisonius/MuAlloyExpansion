module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (one Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (one Source)
}
pred inv3[] {
(let aux = ({ u,User,w: (one Work),s: (one Source) {
((profile in (u->w)) && ((w->s) in source))
} }) {
(all s: (one Source) {
(s in Institution)
})
})
}