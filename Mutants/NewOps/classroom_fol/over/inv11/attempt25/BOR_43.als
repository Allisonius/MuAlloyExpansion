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
(all c: (one Class),p,p1: (one Person),g: (one Group) {
((((p->c) !in Teaches) || (p !in Teacher)) => ((c->(p1->g)) = Groups))
})
}





