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
(all x,y: (User & Influencer) {
((y in (x.suggested)) => (some z: (one User) {
((z in (x.follows)) && (z in (follows.y)) && (x != y) && (y !in (x.follows)))
}))
})
}





