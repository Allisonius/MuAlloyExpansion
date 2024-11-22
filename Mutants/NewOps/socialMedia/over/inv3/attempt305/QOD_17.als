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
pred inv3[] {
(all x: (one User) {
((((Photo)) in (x.sees)) => ((some z: (one User) {
((z in (((Photo)).posts)) && (z in (x.follows)))
}) || (((Photo)) in Ad)))
})
}





