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
(all p1,p2,p3: (Person & Student) {
((((p1->p2) in Tutors) => (p2 in Teacher)) || ((((p1->p2) in Tutors) && ((p2->p3) in Tutors)) => (p3 in Teacher)) || (p1 in Teacher))
})
}





