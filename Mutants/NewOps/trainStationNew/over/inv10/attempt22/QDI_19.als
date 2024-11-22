module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv10[] {
(all f: (one Track),j: (Track & Exit) {
(some s: (one Semaphore) {
((j in (f.succs)) => ((f->s) in signals))
})
})
}





