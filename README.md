Project Documentation Cookiecutter Template
===========================================

Overview
--------

A simple cookiecutter template to use to help write consistent notes and documentation
for various projects.

```
├── ideas/
├── overview.md
├── planning.md
├── references.md
└── todo.md
```

Over time, I found that I ended up documenting and writing notes on many of the same
main topics, but often using different filenames or separations.

Even though I may not need to use every one of these files for a given project, knowing
precisely where to find the notes I'm looking for when I do is quite useful.

In the default template, most of the note topics each get a single markdown file, e.g.
`overview.md`.

There are two types of notes that I frequently find useful to break down into multiple
files:

1. ideas
2. tasks

In the template, an empty `ideas/` folder is created. Here you can add markdown notes
describing specific ideas relating to the project.

The `tasks/` folder is not created by default, but may be useful for larger projects
where it makes sense to devote full `.md` files to different tasks relating to the
project. A single task note may include some overview or background notes, along with
a collection of TODO items specific to that task.

For smaller projects, it may be sufficient to simply store a TODO list in the `todo.md`
file.

If a given project emphasizes some other aspect (e.g. data sources) more, however, you 
can swap the single markdown file for a directory. As long as the same naming
conventions are used, it will be easy to switch between projects.

Additional Conventions
----------------------

In addition to the files above which are automatically created by this template, below
are a list of other less common (but still useful) markdown notes used for some of my
projects.

If all of these were to be included in the cookiecutter template, it would result in a
bunch of projects having a number of unused files and creating clutter.

At the same time, however, it's still useful to at least document conventions used for
such files when they are relevant for a project so that they can be found more easily.

```
backburner.md       -- TODO items, ideas., etc. to be saved for a later date
background.md       -- Background information.
data-sources.md     -- Data sources used in a project.
decisions.md        -- Description of important decisions related to a project.
meetings.md         -- Notes from meetings relating to the project.
questions.md        -- Questions relating to a project.
related-efforts.md  -- Related research, methods, software, etc.
```

