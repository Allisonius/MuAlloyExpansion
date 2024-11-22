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
(some y: (one User) {
((((User)) in (((User)).suggested)) => ((((User)) in (y.follows)) && (((User)) !in (((User)).follows)) && (y in (((User)).follows)) && (((User)) != ((User)))))
})
}





