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
pred inv12[] {
(all t: (one Teacher) {
(some p: (one Person),g: (one Group),c: (one Class) {
((Teaches in (t->c)) => ((c->(p->g)) in Groups))
})
})
}





