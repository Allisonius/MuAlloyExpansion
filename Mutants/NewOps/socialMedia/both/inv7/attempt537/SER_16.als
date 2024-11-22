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
(all u: (one Photo),sugg: (one ((u.follows).follows)),foll: (one (u.follows)) {
((foll !in sugg) && (u !in (u.suggested)) && (sugg in (u.suggested)))
})
}





