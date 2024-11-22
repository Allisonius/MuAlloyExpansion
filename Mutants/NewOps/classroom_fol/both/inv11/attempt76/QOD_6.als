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
(some p1,p2: (one Person) {
(((((Class))->(p1->((Group)))) in Groups) => ((p2->((Class))) in Teaches))
})
}





