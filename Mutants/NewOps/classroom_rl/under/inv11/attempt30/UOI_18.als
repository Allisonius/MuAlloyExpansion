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
(((c.Groups) in (Class.Groups)) => (((Teaches.c) & Teacher) in (one ((Teaches.Class) & Teacher))))
})
}





