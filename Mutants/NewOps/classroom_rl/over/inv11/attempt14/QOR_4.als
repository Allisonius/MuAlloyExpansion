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
(one c: (one Class) {
(((c.Groups).Group) in (((Teaches.c) & Teacher).Tutors))
})
}





