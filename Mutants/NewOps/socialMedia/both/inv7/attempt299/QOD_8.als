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
(all u2: (one User) {
(((((User)).follows) !in (u2.follows)) => ((((User)).follows) in (u2.suggested)))
})
}





