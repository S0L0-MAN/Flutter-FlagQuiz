# My First Flutter App: Flag Quiz


I recently started learning **Flutter** because I wanted to see how mobile apps are built from scratch. For my first project, I decided to make a **Flag Quiz** game. It’s a simple app, but it helped me understand the most important parts of how Flutter works.

---

## Why I made this
I wanted to build something that wasn't just a "Hello World" screen. I chose a quiz app because it forced me to figure out:

* **State Management**: How to change what's on the screen when a user clicks a button.
* **Navigation**: How to move from one screen to a completely different one.
* **Data Passing**: How to pass data (like a score) between those screens.

---

## Cool things the app does
* **Shuffling**: I used `.shuffle()` so the game isn't the same every time you play.
* **Logic**: The app has to check if the button you clicked matches the `correctAnswer` variable.
* **The Results Page**: I made a second screen that pops up at the end to show you how you did.
* **Going Back**: I learned how to use `Navigator.pop` so the "Home" button actually takes you back to the start.

---

## What I learned
This project taught me a lot about the basics:

1. **Stateless vs Stateful**: I learned that if I want the score to update, I have to use a `StatefulWidget` and `setState`.
2. **Assets**: I had to learn how to link my `.png` flag images in the `pubspec.yaml` file so the app could find them.
3. **Buttons and Layouts**: I practiced using `Columns`, `Rows`, and `Padding` to make the buttons look right on the screen.
4. **Async Functions**: I used `async` and `await` for the first time to make sure the game waits for the user to see their score before resetting.

---

## How to run it
I built this on **Windows**. To run it:
1. Make sure you have the flag images in an `assets/` folder.
2. Run `flutter pub get` in the terminal to get the packages.
3. Use `flutter run` to start the app.