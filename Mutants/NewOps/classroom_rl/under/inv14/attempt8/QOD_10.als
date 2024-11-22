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
((some (((Person)).(((Class)).Groups))) => ((Teacher & (Teaches.((Class)))) in (Tutors.((Person)))))
}





