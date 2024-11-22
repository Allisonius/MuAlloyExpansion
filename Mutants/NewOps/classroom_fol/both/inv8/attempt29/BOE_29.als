module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv8[] {
(all c1,c2: (one Class) {
(some p: (one Person) {
(((p->c2) in Teaches) => ((p in Teacher) && ((p->c1) in Teaches)))
})
})
}





