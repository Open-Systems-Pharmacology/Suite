# Coding Standards for R

We will follow the <https://style.tidyverse.org/> style guide with very few changes to benefit from two R packages supporting this style guide:

- [styler](http://styler.r-lib.org/)
- [lintr](https://github.com/jimhester/lintr)

This coding standards will outline the more important aspects of the aforementioned style.

# Modifications from tidyverse Coding Standards

- Naming will use `camelCase` instead of `snake_case`.

- Favor usage of `return()` even when the return value does not need to be specified explicitly.

# RStudio IDE Settings

- Indentation of 2
- Use spaces instead of tabs

# Naming Convention

Use meaningful and understandable names. Code should read as a story and only some well known abbreviations (such as pk) should be used

## Files

- Underscores separated multiple words
- All lower case
- Ends in `.R`

```
# Good
fit_models.R
utility_functions.R

# Bad
fit models.R
foo.r
stuff.r
```

## Object names

- Variable and function names should use only lowercase letters and numbers. Use **camelCase** to separate words within a name.

- Class names on the other hand should use **Pascal Casing**.

- True constant variables should use **ALL_CAPS Casing**.

```r
# Class

Parameter <- R6Class("Parameter", ....)

# Variable

parameterToDelete <- ...

# Method and function

performSimulation <- function (...)

# Constant variables

DEFAULT_PERCENTILE <- 0.5
```

- Do not use Hungarian notation (e.g., g for global, b for boolean, s for strings, etc.)

## Functions

Prefer using `return()` for returning result. You can rely on R to return the result of the last evaluated expression for simple functions.

## Comments

- Do not comment the obvious.
- Use comments to explain the **why**, and not the **what** or **how**.
- Indent comment at the same level of indentation as the code you are documenting.
- All comments must be written in English.
- Do not generate comments automatically.
- Do comment algorithm specifics. For example, why would you start a loop at index 1 and not at 0, etc.
- If a lot of comments are required to make a method easier to understand, break down the method in smaller methods.
- Really, do not comment the obvious.

## Documentation

Use roxygen comments as described [here](http://r-pkgs.had.co.nz/man.html#roxygen-comments)

Prefer to use `markdown` syntax to write roxygen documentation (e.g. use `**` instead of `\bold{}`).

To automate the conversion of existing documentation to use `markdown` syntax, install [roxygen2md](https://roxygen2md.r-lib.org/) package and run `roxygen2md::roxygen2md()` in the package root directory and carefully check the conversion.

### Documenting functions

<http://r-pkgs.had.co.nz/man.html#man-functions>

### Documenting classes

Reference classes are different across S3 and S4 because methods are associated with classes, not generics. RC also has a special convention for documenting methods: the docstring. The docstring is a string placed inside the definition of the method which briefly describes what it does. This makes documenting RC simpler than S4 because you only need one roxygen block per class.

```r
#' This is my Person class
#' @title Person Class
#' @docType class
#' @description Person class description
#' @field name Name of the person
#' @field hair Hair colour
#'
#' @section Methods:
#' \describe{
#' \item{set_hair Set the hair color}
#' }
#'
#' @examples
#' Person$new(name="Bill", hair="Blond")
#' @export
Person <- R6::R6Class("Person",
  public = list(
    name = NULL,
    hair = NULL,
    initialize = function(name = NA, hair = NA) {
      self$name <- name
      self$hair <- hair
    },

    set_hair = function(val) {
      self$hair <- val
    },
  )
)
```

# Syntax

## Spacing

Use the `styler` addin for RStudio. It will style the files for you. For more, see [here](https://style.tidyverse.org/syntax.html#spacing)

## Global Variables

- Except for program constants or truly global states, never use global variables. If a global object is required, this should be absolutely discussed with the team.

- No hard coded strings and magic number should be used. Declare a constant instead.

## Style

### Long Lines

Strive to limit your code to 80 characters per line.

### Assignments

Use `<-`, not `=`, for assignment.

### Semicolons

Don't put `;` at the end of a line, and don't use `;` to put multiple commands on one line.

**Note:** All these styling issues, and much more, are corrected automatically with `styler`.

### Code blocks

- `{` should be the last character on the line. Related code (e.g., an if clause, a function declaration, a trailing comma, …) must be on the same line as the opening brace.

- The contents should be indented

- `}` should be the first character on the line.

- It is OK to drop the curly braces for very simple statements that fit on one line, **as long as they don't have side-effects**.

```
# Good
y <- 10
x <- if (y < 20) "Too low" else "Too high"

# Bad
if (y < 0) stop("Y is negative")

if (y < 0)
  stop("Y is negative")

find_abs <- function(x) {
  if (x > 0) return(x)
  x * -1
}
```

# Tests

Refer to chapter [Tests](https://style.tidyverse.org/tests.html)

# Error messages

Refer to chapter [Errors](https://style.tidyverse.org/error-messages.html)
