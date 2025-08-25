package app.rbac

# By default, deny requests
default allow = false

# Allow admins to do anything
allow {
	user_is_admin
}

# Allow bob to do anything test
allow {
	input.user == "bob"
}

# user_is_admin is true if...
user_is_admin {
	# for some `i`...
	some i

	# "admin" is the `i`-th element in the user->role mappings for the identified user.
	data.scope1.users[input.user].roles[i] == "admin"
}