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
((all e: (one Track) {
(lone t: (one Track) {
(e in (t.succs))
})
}) && (all j: (one Junction) {
(some t,l: (one Track) {
((t != l) && (t != j) && (l != j) && (j in (t.succs)) && (j in (l.succs)))
})
}))
}





