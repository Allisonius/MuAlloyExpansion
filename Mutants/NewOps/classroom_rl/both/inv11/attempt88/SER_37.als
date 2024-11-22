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
(all c: (one Class) {
(some t: (one (Teaches.c)) {
(some p: (one Student),g: (one Group) {
((c->(p->g)) in Groups)
})
})
})
}





