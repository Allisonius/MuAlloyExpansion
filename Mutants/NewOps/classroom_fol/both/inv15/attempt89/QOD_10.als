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
(some p2,p3: (one Person) {
((((Person)) != p2) && (((Person)) != p3) && (p2 != p3) && (all p4: (one Person) {
((p4 = ((Person))) || (p4 = p2) || (p4 = p3))
}) && ((((Person)) in Teacher) || (((p2->((Person))) in Tutors) && (p2 in Teacher)) || (((p3->p2) in Tutors) && ((p2->((Person))) in Tutors) && (p3 in Teacher))))
})
}





