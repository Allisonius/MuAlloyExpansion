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
(all c: (one Student),p: (one Person),g: (one Group) {
((((p->c) in Teaches) && (p in Teacher)) => ((c->(p->g)) in Groups))
})
}





