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
(all disj u1,u2: (one Influencer) {
((u1 in (u2.suggested)) => ((u1 !in (u2.follows)) && (some u3: (one User) {
((u3 != u2) && (u3 != u1) && (u3 in (u2.suggested)))
})))
})
}





