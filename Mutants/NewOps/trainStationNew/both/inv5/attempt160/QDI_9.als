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
(all j: (Track + Entry) {
(all t1,t2: (one Track) {
(j in ((t1.succs) & (t2.succs)))
})
})
}





