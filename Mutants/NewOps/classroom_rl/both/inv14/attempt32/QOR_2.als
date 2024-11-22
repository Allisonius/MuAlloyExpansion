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
(no c: (one Class) {
(((Teaches.c)->(((Class.Groups).Group) & Student)) in Tutors)
})
}





