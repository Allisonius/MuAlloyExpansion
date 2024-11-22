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
(all u: (one User),sug: (one User),followed: (one User) {
((sug in (u.suggested)) => ((sug in (followed.follows)) && (followed in (u.follows)) && (sug !in (u.(~follows)))))
})
}





