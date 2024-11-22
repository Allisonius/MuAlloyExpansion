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
(all c: (one Class),g: (one Group) {
(some p1,p2: (one Person) {
((Groups in (c->(p1->g))) => ((p2->c) in Teaches))
})
})
}





