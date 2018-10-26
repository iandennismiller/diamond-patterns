Outline
=======

http://diamond-patterns.readthedocs.io/en/latest/patterns/outline.html

1. construct outline with headings
1. expand outline into slideshow by adding lists of points
1. add visuals to slide show
1. present slides with ad-libbed narration and record audio
1. transcribe audio onto copy of outline, aligning headings to slides
1. revise transcript
1. revise slides; make simultaneous updates to transcript
1. present slides again while reading transcript and recording audio
1. edit the audio to remove filler words and pauses
1. combine audio with slides into video for online distribution
1. expand transcript to become article
1. revise article
1. revise slides
1. record a "final" video (optional)

Setup
-----

Create Beamer presentation with Markdown
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

::

    mkdir presentation
    cd presentation
    diamond --skel beamer scaffold
    cd ..

Create LaTeX article
^^^^^^^^^^^^^^^^^^^^

::

    mkdir article
    cd article
    diamond --skel article scaffold
    cd ..

Or, create Tufte-style bookdown website
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

::

    mkdir working
    cd working
    diamond --skel tufte scaffold
    cd ..

Estimation
----------

Once the outline is made, analysis has been completed, and visuals are created, then a rough time estimate for the rest of the project can be calculated.

Let's say there are 90 slides implied by the outline.

::

    slides = 90
    image = 5 * slides
    present = slides
    transcribe = 6 * slides
    revise = 10 * slides
    draft = 10 * slides
    minutes = 32 * slides
    hours = slides / 2

Actually, the easy way is this.  Each slide implies 30 minutes of work, so the number of hours is slides/2.

Unknowns
^^^^^^^^

- outlining: how well is the subject matter known?
- visualizing: how complex are the goals for the visual?
- analysis: how much work does this entail?

Known quantities
^^^^^^^^^^^^^^^^

- stock images: 1 slide takes 5 minutes to locate a suitable image
- presentation: 1 slide takes 1 minute to present
- transcription: 1 slide (1 minute of presentation audio) takes 6 minutes to transcribe
- transcript revision: 1 slide takes 10 minutes to revise
- article draft: 1 section takes 10 more minutes to revise, add citations, etc
