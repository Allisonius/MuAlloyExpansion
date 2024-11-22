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
(some g: (one Group) {
(all c: (one Class),p,p1: (one Person) {
((((p->c) !in Teaches) || (p !in Teacher)) => ((c->(p1->g)) !in Groups))
})
})
}





