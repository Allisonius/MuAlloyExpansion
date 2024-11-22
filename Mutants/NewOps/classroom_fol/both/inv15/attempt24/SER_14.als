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
(all p1,p2,p3: (one Teacher) {
((p1 in Teacher) => ((p2 in Student) && (p3 in Student)))
})
}





