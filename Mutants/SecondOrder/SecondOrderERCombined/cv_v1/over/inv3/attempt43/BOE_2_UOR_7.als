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
source: (one Source)
}
pred inv3[] {
(let aux = ({ u,User,w: (one Work),s: (one Source) {
(((u->w) in profile) && (source in (w->s)))
} }) {
(all s: (one Source) {
(s in Institution)
})
})
}