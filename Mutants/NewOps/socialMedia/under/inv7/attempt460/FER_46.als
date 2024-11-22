module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv7[] {
((all x: (one User) {
((suggested.x) in ((follows.sees).x))
}) && (no x: (one User) {
(((suggested.x) in (follows.x)) && (x in (suggested.x)))
}))
}





