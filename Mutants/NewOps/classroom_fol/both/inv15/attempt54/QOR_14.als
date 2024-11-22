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
(all p: (one Person) {
(all t: (one Teacher) {
((t = p) || (t in (p.Tutors)) || (t in ((p.Tutors).Tutors)) || (t in (((p.Tutors).Tutors).Tutors)))
})
})
}





