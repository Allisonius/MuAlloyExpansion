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
(all t1: (one Entry) {
(all t2: (one Exit) {
(t2 != (t1.(^succs)))
})
})
}





