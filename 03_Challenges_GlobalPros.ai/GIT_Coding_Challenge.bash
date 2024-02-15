# Coding Challenge
	# In the Bash script, write a simple set of Git commands to do the following:
	# First, clone the repository located at https://github.com/coderbyte-org/big-o. Move into the project directory, create, and switch to a new branch called feat/my-feature-1.
	# Next, create a new file titled file.txt and add the following content "This is some initial content for the file." Add this file to the staging area and commit the changes with the message docs: add file.txt
	# Create and switch to a new branch called feat/my-feature-2 and modify file.txt by adding the following line to the end of the file "This is some new content for the file." Add this file to the staging area and commit the changes with the message docs: update file.txt
	# Switch back to feat/my-feature-1 and modify file.txt by changing the initial content to "This is some updated initial content for the file."
	# Merge feat/my-feature-2. This should create a merge conflict since the changes made to the same line of file.txt in both branches conflict. Resolve the merge conflict by keeping the changes in feat/my-feature-2.
	# Finally, print the results of:
	# git show HEAD:file.txt && git show --pretty='' HEAD^1

# Solution
	!/bin/bash
	git clone https://github.com/coderbyte-org/big-o
	cd big-o/
	git checkout -b feat/my-feature-1
	echo "This is some initial content for the file." > file.txt
	git add file.txt
	git commit -m "add file.txt"
	git checkout -b feat/my-feature-2
	echo "This is some new content for the file." >> file.txt
	git add file.txt
	git commit -m "update file.txt"
	git checkout feat/my-feature-1
	echo "This is some updated initial content for the file." > file.txt
	git merge feat/my-feature-2
	git checkout --theirs -- .
	git add .
	git commit -m "Resolved conflicts using --theirs for all files"
