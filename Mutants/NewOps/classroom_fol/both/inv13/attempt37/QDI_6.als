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
pred inv13[] {
(all p: (Person - Teacher) {
(((p.Tutors) in Student) && ((p.Teaches) in (p.(Class.Groups))))
})
}





