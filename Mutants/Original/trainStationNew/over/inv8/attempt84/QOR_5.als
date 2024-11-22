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
((no en: (one Entry) {
(Exit in (en.(^succs)))
}) && (no Signal) && (no Semaphore) && (no Speed))
}





