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
(all c: (one Class),g: (one Student),p1: (one Teacher),p2: (one Student) {
((((p1->c) in Teaches) && ((c->(p2->g)) in Groups)) => ((p1->p2) in Tutors))
})
}





