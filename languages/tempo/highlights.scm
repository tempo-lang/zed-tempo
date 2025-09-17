; highlights.scm

; keywords
"func" @keyword
"let" @keyword

; functions
(function_signature name: (identifier) @function)

; types
(named_type (identifier) @type)
(role_type_normal (identifier) @property)
(role_type_shared (identifier) @property)

; statements
(stmt_variable_decl name: (identifier) @variable)

; literals
(boolean_literal) @boolean
(float_literal) @number
(integer_literal) @number
(string_literal) @string
