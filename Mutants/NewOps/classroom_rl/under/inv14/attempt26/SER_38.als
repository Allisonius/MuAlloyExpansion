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
pred inv14[] {
(all c: (one Class),g: (one Group),p1,p2: (one Person) {
(((p1 in Student) && ((p1->c) in Teaches) && ((c->(p2->g)) in Groups)) => ((p1->p2) in Tutors))
})
}





