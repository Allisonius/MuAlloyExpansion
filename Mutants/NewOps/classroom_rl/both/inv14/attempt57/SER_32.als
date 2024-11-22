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
(all c: (one Class),p: (one (Student & ((c.Groups).Class))),t: (one (Teacher & (Teaches.c))) {
((p->t) in Tutors)
})
}





