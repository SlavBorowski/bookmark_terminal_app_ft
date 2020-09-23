# Bookmarking Terminal App

## Installation and Setup

1. Install ruby, I recommend using [asdf](https://asdf-vm.com/)

2. Install git, go to the [official docs](https://git-scm.com/downloads) for more on how to do that

3. `git clone` to your home directory

```bash
git clone https://github.com/harrisonmalone/bookmark_terminal_app_ft.git ~/bookmark_terminal_app_ft
```

4. Run the `setup` executable file

```bash
~/bookmark_terminal_app_ft/bin/setup
```

5. Open your `.bash_profile` 

```bash
open ~/.bash_profile
```

6. Add this line

```bash
export PATH=$PATH:$HOME/bookmark_terminal_app_ft/bin
```

7. Restart your terminal to make sure .bash_profile loads the app into your PATH

8. To run the app type

```bash
bookmarks
```