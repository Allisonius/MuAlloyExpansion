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
(lone u: (one User),ad: (one Ad) {
((ad in ((u.follows).posts)) || (ad in ((u.suggested).posts)))
})
}





