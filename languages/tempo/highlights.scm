; highlights.scm

; keywords
"func" @keyword
"let" @keyword
"return" @keyword
"await" @keyword
"async" @keyword

; functions
(function_signature name: (identifier) @function)

; types
(named_type (identifier) @type)
(role_type_normal (identifier) @property)
(role_type_shared (identifier) @property)

; statements
(stmt_variable_decl name: (identifier) @variable)
(function_param name: (identifier) @variable)

; literals
(boolean_literal) @boolean
(float_literal) @number
(integer_literal) @number
(string_literal) @string

("{" @punctuation.bracket "}" @punctuation.bracket)
("[" @punctuation.bracket "]" @punctuation.bracket)
("(" @punctuation.bracket ")" @punctuation.bracket)
("," @punctuation.delimiter)

; expressions
(expr_com "->" @punctuation)
