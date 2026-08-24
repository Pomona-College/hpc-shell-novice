---
title: Introducing the Shell
teaching: 5
exercises: 0
---

::::::::::::::::::::::::::::::::::::::: objectives

- Explain how the shell relates to the keyboard, the screen, the operating system, and users' programs.
- Explain when and why command-line interfaces should be used instead of graphical interfaces.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- What is a command shell and why would I use one?

::::::::::::::::::::::::::::::::::::::::::::::::::

### Background

Humans and computers interact in various ways, including using keyboards and mice, touchscreens, and voice recognition systems. The most common interaction with personal computers is through a **Graphical User Interface** (GUI), where we issue commands by clicking a mouse and navigating through menus.

While GUIs are visually intuitive and easy to learn, they're not very efficient for certain tasks. Consider this scenario: You need to extract the third line from a thousand text files, each in a separate directory, and compile them into a single document. Using a GUI for this would mean hours of mouse clicking and a high risk of errors due to the monotonous nature of the task.

This is where the Unix shell, a **Command-Line Interface** (CLI) and scripting language, becomes advantageous. The Unix shell excels at automating repetitive tasks quickly and accurately. For instance, the task mentioned in the literature search could be completed in mere seconds using the right shell commands.

### The Shell

The shell is essentially a program where users can enter commands.
It enables the execution of both complex programs like climate modeling software and
simple operations, such as creating an empty directory with a single line of code.
Among Unix shells, Bash (the Bourne Again SHell, named as it is an enhanced version of a shell created by Stephen Bourne) is the most widely used.
Bash comes as the default shell in most Unix systems and in many Unix-like toolkits for Windows.
For Windows users, 'Git Bash' provides a Bash-like interface specifically for interacting with Git.

Learning to use the shell requires some time and effort.
In contrast to a GUI, which offers options directly for selection, a CLI like the shell doesn't present choices upfront. Thus, learning it involves familiarizing oneself with certain commands, akin to learning new words in a foreign language.
Fortunately, mastering just a handful of these commands can be extremely powerful, and we'll focus on these essentials.

The shell's syntax allows for the combination of various tools into efficient
pipelines, enabling the automatic handling of large data sets. By writing sequences of
commands into a *script*, one can significantly enhance the reproducibility of
their workflows.

Moreover, the command line is frequently the most straightforward way to communicate with remote systems and supercomputers.
For those using specialized tools or accessing high-performance computing facilities, shell proficiency is almost indispensable.
As the use of computing clusters and cloud computing grows in scientific research, shell skills are becoming increasingly important.
The command-line abilities we explore here lay the foundation for engaging with a broad spectrum of scientific inquiries and computational challenges.

Let's get started.

Upon opening the shell, a **prompt appears**, signifying that the shell awaits your input.

```bash
$
```

The shell usually displays `$ `as the prompt, though it might use a different symbol.
In our lesson examples, we'll represent the prompt with `$ `. Remember, do not type the prompt when entering commands. You should only type what comes after the prompt. This guideline is true for both these lessons and those from other sources.
Also, remember to press the <kbd>Enter</kbd> key after typing a command to execute it.

A **text cursor** follows the prompt. This cursor, which indicates where your typing will be displayed, may appear as a blinking or steady block, an underscore, or a pipe. It's similar to what you might have seen in text editors.

Your prompt could appear slightly different. For instance, many common shell environments include your username and host name before the `$`, resulting in a prompt like:

```bash
cecil@localhost $
```

Your prompt might even show more information. Don't be concerned if your prompt extends beyond a simple `$ `. This lesson is not affected by these additional details, and they won't interfere with our learning. Our primary focus is on the `$ `character, and we'll explore its significance later.

Now, let's execute our first command, `ls`, an abbreviation for "list".
This command displays the contents of the current directory:

```bash
$ ls
```

```output
Desktop     Downloads   Movies      Pictures
Documents   Library     Music       Public
```

:::::::::::::::::::::::::::::::::::::::::  callout

## Command not found

When you enter a command that the shell doesn't recognize, either because of a typo or because the corresponding program isn't installed, the shell will display an error message. For instance, if you accidentally type `ks` instead of a valid command, the shell's response will be:

```bash
$ ks
```

```output
ks: command not found
```

![On Sagehen: a first `ls`, then the error the shell prints for a mistyped command.](fig/01-sagehen-ls-command-not-found.png){alt='Terminal on the Sagehen cluster. The ls command lists directories including code, data, projects, and workshop-0. A second command, ks, returns the error bash: ks: command not found, and the prompt returns.'}

This might happen if the command was mis-typed or if the program corresponding to that command
is not installed.


::::::::::::::::::::::::::::::::::::::::::::::::::

## Cecil's Pipeline: Solving an Archaeologist's Challenge

Cecil Sagehen, an archaeologist at Pomona College, has just returned from a year-long excavation in the [Göbekli Tepe](https://en.wikipedia.org/wiki/Göbekli_Tepe) region. During his fieldwork, he gathered extensive data on ancient artifacts, amounting to 1520 detailed reports, each documenting different aspects of the findings, including age, origin, and significance. He plans to analyze the relative age distribution of these artifacts using a specialized analysis tool called `ancientstats.sh`. Additionally, Cecil aims to publish his findings in the upcoming special issue of *Archaeological Insights* by the end of the month.

Manually running `ancientstats.sh` for each of the 1520 reports would be extremely time-consuming. If each analysis takes 30 seconds, processing all files by hand using a GUI would demand over 12 hours of Cecil's focus. However, by leveraging the shell, Cecil can delegate this tedious job to his computer, freeing up his time to concentrate on drafting his research paper.

The upcoming lessons will delve into how Cecil can use a command shell to automate running the `ancientstats.sh` program. We'll explore how loops can help automate the repetitive task of inputting file names, allowing his computer to process the data while he works on his paper.

An added advantage is that once Cecil constructs this processing pipeline, they can easily reuse it for any future data he collects.

To successfully accomplish their objective, Cecil needs to learn how to:

- Navigate to specific files or directories
- Create new files or directories
- Determine the length of a file
- Chain multiple commands together
- Retrieve a specific set of files
- Iterate over a series of files
- Execute a shell script containing their analysis pipeline


:::::::::::::::::::::::::::::::::::::::: keypoints

- The shell functions as a program designed to execute other programs, primarily by interpreting and running commands.
- Throughout this lesson, we focus on Bash, which is commonly the default shell in many Unix systems.
- In Bash, programs are executed by typing commands at the command-line prompt.
- The shell offers several benefits, including a high ratio of actions per keystroke, the ability to automate repetitive tasks, and the capability to connect to and operate on networked machines.
- One of the main challenges in using the shell is understanding the specific commands required and the methods to execute them effectively.

::::::::::::::::::::::::::::::::::::::::::::::::::


