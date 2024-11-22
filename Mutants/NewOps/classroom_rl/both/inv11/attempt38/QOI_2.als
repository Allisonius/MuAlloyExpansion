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
(no var123456 : Person { ((some (var123456.(Class.Groups))) => (one ((Class.(~Teaches)) & Teacher)))})
}





