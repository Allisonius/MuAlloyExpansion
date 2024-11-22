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
(all c: (one Teacher) {
(((#(c.Groups)) > 0) && ((#((Teaches.c) & Teacher)) = 1))
})
}





