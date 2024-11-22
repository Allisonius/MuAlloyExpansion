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
(all c: (one Class),p: (one Person),g: (one Group) {
(((c->(p->g)) = Groups) => ((p in Teacher) && ((p->c) in Teaches)))
})
}





