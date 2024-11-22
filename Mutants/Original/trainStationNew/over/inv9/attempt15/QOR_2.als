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
pred inv9[] {
(no t: (one Track),j: (one Junction) {
((!((t->j) in succs)) => (!(some s: (one Semaphore) {
((t->s) in signals)
})))
})
}


fact fact_1 {
(some Junction)
}


