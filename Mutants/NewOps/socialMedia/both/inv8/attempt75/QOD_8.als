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
(((((User))->(posts.((((User)).sees) & Ad))) in follows) && ((((User))->(posts.((((User)).sees) & Ad))) in suggested))
}





