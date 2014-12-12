<h2>autograder</h2>

Automatic grading and semi-personalized study plans for SAT tutoring students. 

Autograder lives at https://stark-sands-6086.herokuapp.com/

<h2>background</h2>

I put together this simple program in order to simplify the process of grading my SAT prep students' mock exams. Rather than 
my providing each of them with a score estimate based on questions right/wrong, they can simply score their own tests and plug 
the scores into the program. 

In addition to providing a scaled score out of 2400 points, autograder also provides a semi-personalized study plan for each subject, depending on whether the students falls into a low/medium/high score range for the subject. 

<h2>modification</h2>

If you want to customize this program for your own uses, simply modify the views in:

/app/views/shared/

Each view is a partial for one subject and score range. Simply modify the HTML to include your own recommendations. 

Any feedback on the usability or customization of autograder is more than welcome.

Jameson
