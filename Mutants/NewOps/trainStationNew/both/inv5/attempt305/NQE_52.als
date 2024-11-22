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
pred inv5[] {
((one l: (one Track) {
(all t: (one ((Track - Junction) - Entry)) {
(t in (l.succs))
})
}) && (all j: (one Junction) {
(some t,l: (one Track) {
((t != l) && (j in (t.succs)) && (j in (l.succs)))
})
}))
}





