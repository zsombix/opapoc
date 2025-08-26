package isadmin

# user_is_admin is true if...
user_is_admin {
	# for some `i`...
	some i

	print("aaa:",data.users)
	# "admin" is the `i`-th element in the user->role mappings for the identified user.
	data.users[input.user].roles[i] == "admin"
}