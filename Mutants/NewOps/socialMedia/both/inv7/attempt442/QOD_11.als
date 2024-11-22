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
(some u3: (one ((((User)).follows).follows)) {
((!((((User))->u3) in follows)) => ((((User))->u3) in suggested))
})
}





