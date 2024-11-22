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
pred inv14[] {
(no p1,p2: (one Person),c: (one Class) {
(((some (c.(p2.Groups))) && (c in (p1.Teaches))) => (p2 in (p1.Tutors)))
})
}





