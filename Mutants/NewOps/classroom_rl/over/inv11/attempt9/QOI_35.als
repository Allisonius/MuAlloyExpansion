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
(no var123456 : Teacher { ((some (Person.(Class.Groups))) => (one ((Person.Teaches) & var123456)))})
}





