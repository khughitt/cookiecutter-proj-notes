Project Documentation Cookiecutter Template
===========================================

A simple cookiecutter template to use to help write consistent notes and documentation
for various projects.

```
├── backburner.md
├── data-sources.md
├── decisions.md
├── ideas
│   └── ideas.md
├── meetings.md
├── notes.md
├── overview.md
├── planning.md
├── questions.md
├── references.md
├── tasks
│   └── tasks.md
├── toc.md
└── todo.md
```

Over time, I found that I ended up documenting and writing notes on many of the same
main topics, but often using different filenames or separations.

Even though I may not need to use every one of these files for a given project, knowing
precisely where to find the notes I'm looking for when I do is quite useful.

In the default template, most of the note topics each get a single markdown file,
with the exception of "tasks" and "ideas", which are created as directories so that you
can add separate markdown documents for each major task or idea.

If a given project emphasizes some other aspect (e.g. data sources) more, however, you 
can swap the single markdown file for a directory. As long as the same naming
conventions are used, it will be easy to switch between projects.

