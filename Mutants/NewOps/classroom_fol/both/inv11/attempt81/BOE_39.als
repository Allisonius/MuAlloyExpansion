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
(some p: (one Person) {
(some g: (one Group) {
((Groups in (c->(p->g))) && (p in Teacher))
})
})
})
}





