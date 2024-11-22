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
(all x,y: (one User) {
((y in (x.suggested)) => ((x != y) && (x !in (follows.y)) && (some z: (one Influencer) {
((y in (z.follows)) && (x in (follows.z)))
})))
})
}





