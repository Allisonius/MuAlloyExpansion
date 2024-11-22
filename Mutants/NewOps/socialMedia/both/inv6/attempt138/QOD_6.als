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
pred inv6[] {
(((((univ)) in Influencer) && (((univ)) in Photo) && ((((univ))->((univ))) in posts)) => (all z: (one Day) {
((((univ))->z) in date)
}))
}





