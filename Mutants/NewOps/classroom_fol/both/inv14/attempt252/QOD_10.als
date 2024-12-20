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
((studentInClass[((Person)),((Class))]) => (some p: (one Teacher) {
(((p->((Person))) in Tutors) && ((p->((Class))) in Teaches))
}))
}
pred studentInClass[s: Student,c: Class] {
(some g: (one Group) {
((c->(s->g)) in Groups)
})
}





