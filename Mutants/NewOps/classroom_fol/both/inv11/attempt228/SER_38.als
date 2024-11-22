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
pred inv11[] {
((all c: (one Class) {
(some p: (one Teacher) {
(((p->c) in Teaches) && (p in Group))
})
}) => (all g: (one Group),c: (one Class),p: (one Person) {
((c->(p->g)) in Groups)
}))
}





