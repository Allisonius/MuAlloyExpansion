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
(all u: (one User),u2: (one User) {
((u2 in (u.suggested)) => ((u2 !in u) && (u2 in ((u.follows).follows))))
})
}





