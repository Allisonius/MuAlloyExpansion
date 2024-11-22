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
(all c: (one Class) {
(let w = (Tutors.(((c.Groups).Student) & Student)) {
((no w) || ((Teaches.c) in w))
})
})
}





