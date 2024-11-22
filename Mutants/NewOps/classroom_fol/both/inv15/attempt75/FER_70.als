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
pred inv15[] {
(all t,s1,s2: (one Person) {
(all c: (one Class) {
(all g: (one Group) {
((((c->(s1->g)) in Groups) && ((c->(s2->g)) in Groups) && ((t->c) in Teaches)) => (((t->s1) in Tutors) && ((t->s2) in Teaches)))
})
})
})
}





