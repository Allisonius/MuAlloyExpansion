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
(all c: (one Class),p,p1: (one Person) {
(some g: (one Group) {
(((Teaches !in (p->c)) || (p !in Teacher)) => ((c->(p1->g)) !in Groups))
})
})
}





