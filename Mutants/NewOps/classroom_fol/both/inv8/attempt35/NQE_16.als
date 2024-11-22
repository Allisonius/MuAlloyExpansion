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
(some p: (one Person) {
(all c1,c2: (one Class) {
(((p in Teacher) && ((p->c1) in Teaches)) => (!((p->c2) in Teaches)))
})
})
}





