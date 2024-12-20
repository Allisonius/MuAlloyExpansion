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
(all user: (one User) {
(no suggested_user: (one (user.suggested)) {
((suggested_user != user) && (suggested_user !in (user.follows)) && (some following: (one (user.follows)) {
(suggested_user in (following.follows))
}))
})
})
}





