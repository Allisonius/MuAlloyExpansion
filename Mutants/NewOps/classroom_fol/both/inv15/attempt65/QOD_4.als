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
(all p1,p2: (one Person) {
((((p1->p2) in Tutors) && (p2 in Teacher)) || ((p1 != ((Person))) && (p2 != ((Person))) && ((p2->((Person))) in Tutors) && (((Person)) in Teacher)))
})
}





