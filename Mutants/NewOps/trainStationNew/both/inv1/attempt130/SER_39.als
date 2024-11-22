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
pred inv1[] {
(all s: (one Track) {
((s in (Junction + Exit)) => (((#((s.succs) & Entry)) > 0) && ((#((s.succs) & Exit)) > 0)))
})
}





