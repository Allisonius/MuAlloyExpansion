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
(all c: (one Class) {
(some s: (Person + Student) {
(all g: (one Group) {
(((s->g) in (c.Groups)) => (c in (Teacher.Teaches)))
})
})
})
}





