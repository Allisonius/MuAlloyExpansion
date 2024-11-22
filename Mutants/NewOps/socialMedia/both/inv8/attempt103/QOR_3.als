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
(lone u: (one User),a: (one Ad) {
((((u.sees) in a) => ((a.(~posts)) in (u.follows))) || ((a.(~posts)) in (u.suggested)))
})
}





