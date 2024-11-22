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
pred inv8[] {
(no u: (one User),ad: (one Ad) {
((ad in (u.sees)) => ((ad in ((u.follows).sees)) || (ad in ((u.suggested).sees))))
})
}





