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
(all user_suggested: (one (user.suggested)) {
((user_suggested = user) && (user_suggested !in (user.follows)) && (some following: (one (user.follows)) {
(user_suggested in (following.follows))
}))
})
})
}





