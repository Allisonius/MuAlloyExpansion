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
pred inv9[] {
((Teaches in (Person one->Class)) && (all var123456 : Class { (Teaches in (Teacher one->var123456))}))
}





