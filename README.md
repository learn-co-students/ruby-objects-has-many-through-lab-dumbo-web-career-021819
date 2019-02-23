**The `Doctor` model:**

- The `Doctor` class needs a class variable `@@all` that begins as an empty array.
- The `Doctor` class needs a class method `.all` that lists each doctor in the
  class variable.
- A doctor should be initialized with a name and be saved in the `@@all` array.
- The `Doctor` class needs an instance method, `#new_appointment`, that takes in a
  an instance of the `Patient` class and a date, and creates a new `Appointment`. That
  `Appointment` should know that it belongs to the doctor
- The `Doctor` class needs an instance method, `#appointments`, that iterates
  through all `Appointment`s and finds those belonging to this doctor.
- The `Doctor` class needs an instance method, `#patients`, that iterates over
  that doctor's `Appointment`s and collects the patient that belongs to each
  `Appointment`s.

**The `Appointment` model:**

- The `Appointment` class needs a class variable `@@all` that begins as an empty array.
- The `Appointment` class needs a class method `.all` that lists each `Appointment`
  in the class variable.
- An `Appointment` should be initialized with a date (as a string, like `"Monday, August 1st"`), a patient, and a doctor. The `Appointment` should be saved in the
  `@@all` array.

**The `Patient` model:**

- The `Patient` class needs a class variable `@@all` that begins as an empty array.
- The `Patient` class needs a class method `.all` that lists each patient in the
  class variable.
- A patient is instantiated with a name and be saved in the `@@all` array.
- The `Patient` class needs an instance method, `#new_appointment`, that takes in
  an argument of a doctor and a date and creates a new `Appointment`. The
  `Appointment` should know that it belongs to the patient.
- The `Patient` class needs an instance method, `#appointments`, that iterates
  through the `Appointment`s array and returns `Appointment`s that belong to the
  patient.
- The `Patient` class needs an instance method, `#doctors`, that iterates over
  that patient's `Appointment`s and collects the doctor that belongs to each
  `Appointment`.

<p class='util--hide'>View <a href='https://learn.co/lessons/ruby-objects-has-many-through-lab'>Has Many Objects Through Lab</a> on Learn.co and start learning to code for free.</p>

