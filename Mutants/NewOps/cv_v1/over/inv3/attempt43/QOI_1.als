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
pred inv3[] {
(all var123456 : Work { (let aux = ({ u,User,w: (one var123456),s: (one Source) {
(((u->w) in profile) && ((w->s) in source))
} }) {
(all s: (one Source) {
(s in Institution)
})
})})
}





