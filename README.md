# Bookmarking Terminal App

## Project Management

I used Trello to manage the different tasks that needed to be done.

Here is a link to [my board](https://trello.com/b/N6jfOBNf/bookmarks-app-fast-track).

## Installation and Setup

1. Install ruby, we recommend using [asdf](https://asdf-vm.com/)

2. Install [git](https://git-scm.com/downloads)

3. `git clone` the app to your home directory

```bash
git clone https://github.com/harrisonmalone/bookmark_terminal_app_ft.git ~/bookmark_terminal_app_ft
```

4. Run the `setup` executable file

```bash
~/bookmark_terminal_app_ft/bin/setup
```

5. Open your `.bash_profile` in a text editor

6. Add this line

```bash
export PATH=$PATH:$HOME/bookmark_terminal_app_ft/bin
```

7. Restart your terminal to make sure `.bash_profile` loads the app into your PATH

8. To run the app type

```bash
bookmarks
```