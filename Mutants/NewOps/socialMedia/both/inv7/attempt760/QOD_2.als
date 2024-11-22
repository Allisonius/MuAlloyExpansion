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
(((((User))->((User))) in follows) && (some user3: (one User) {
((((((User))->user3) in follows) && ((((User))->user3) !in follows) && (user3 != ((User))) && (((User)) != ((User)))) => ((((User))->user3) in suggested))
}))
}





