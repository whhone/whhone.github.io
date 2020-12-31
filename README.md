# Setup

```
git submodule update
```

# Development Server

```
hugo server -D
```

# New Post

```
# Single Page
hugo new posts/the-title

# Page Bundle
hugo new --kind posts posts/the-title
```

# Update Theme

```
# Adding a new theme
git submodule add https://github.com/adityatelange/hugo-PaperMod

# Updating the theme
git submodule update

# Remove the submodule entry from .git/config
git submodule deinit -f themes/mainroad

# Remove the submodule directory from the superproject's .git/modules directory
rm -rf .git/modules/themes/mainroad

# Remove the entry in .gitmodules and remove the submodule directory located at path/to/submodule
git rm -f themes/mainroad
```
