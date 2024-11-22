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
(all j: (one Junction) {
(some t1,t2: (one Track) {
((t1 != t2) && ((t1.succs) in j) && (j in (t2.succs)))
})
})
}





