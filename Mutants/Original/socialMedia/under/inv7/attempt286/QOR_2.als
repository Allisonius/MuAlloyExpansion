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
(no u: (one User),sugg: (one (u.suggested)) {
((u !in sugg) && (sugg !in (u.follows)) && (sugg in ((u.follows).follows)))
})
}





