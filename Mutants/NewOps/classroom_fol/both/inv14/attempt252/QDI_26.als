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
(all s: (one Person),c: (one Class) {
((studentInClass[s,c]) => (some p: (Person & Student) {
(((p->s) in Tutors) && ((p->c) in Teaches))
}))
})
}
pred studentInClass[s: Student,c: Class] {
(some g: (one Group) {
((c->(s->g)) in Groups)
})
}





