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
pred inv8[] {
(all disj t1,t2: (one Track) {
(((t1 in Entry) && (t2 in Entry)) => (t1 in (t2.succs)))
})
}





