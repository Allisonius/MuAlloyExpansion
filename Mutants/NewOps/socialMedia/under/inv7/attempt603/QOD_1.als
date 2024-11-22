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
(some usr2,usr3: (one User) {
((((((User))->usr2) in follows) && ((usr2->usr3) in follows) && ((((User))->usr3) !in follows)) => ((((User))->usr3) in suggested))
})
}





