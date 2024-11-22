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
(all p1,p2: (one Person),c: (one Class) {
((some g: (one Group) {
((c->(p2->g)) in Groups)
}) && ((p1->c) in Teaches) && ((*(p1->p2)) in Tutors))
})
}





