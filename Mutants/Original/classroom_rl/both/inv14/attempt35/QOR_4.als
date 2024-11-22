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
(one c: (one Class) {
(((c.Groups).Group) in (((Teaches.c).Tutors) & (Teacher.Tutors)))
})
}





