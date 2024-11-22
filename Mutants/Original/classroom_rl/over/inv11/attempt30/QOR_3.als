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
(lone p: (one Person),c: (one Class) {
((some (p.(c.Groups))) => (one ((p.Teaches) & Teacher)))
})
}





