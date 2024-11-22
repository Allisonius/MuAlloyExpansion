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
(all u: (one User),x: (one (User - u)) {
((u in (x.suggested)) => ((u !in (x.follows)) && (u in ((x.(~follows)).follows))))
})
}





